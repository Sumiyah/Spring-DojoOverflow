package com.sumiyah.overflow.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.sumiyah.overflow.models.Answer;
import com.sumiyah.overflow.models.NewQuestion;
import com.sumiyah.overflow.models.Question;
import com.sumiyah.overflow.models.Tag;
import com.sumiyah.overflow.repositories.AnswerRepository;
import com.sumiyah.overflow.repositories.QuestionRepository;
import com.sumiyah.overflow.repositories.TagRepository;

@Service
public class AppService {
	private QuestionRepository qRepo;
	private TagRepository tRepo;
	private AnswerRepository aRepo;
	public AppService(QuestionRepository qRepo, AnswerRepository aRepo, TagRepository tRepo) {
		this.qRepo = qRepo;
		this.tRepo = tRepo;
		this.aRepo = aRepo;
	}
	public List<Question> getQuestions() {
		return this.qRepo.findAll();
	}
	public Question getQuestion(Long id) {
		return this.qRepo.findById(id).orElse(null);
	}
	public void createQuestion(NewQuestion question) {
		// TODO: make a real question here
		List<Tag> questionsTags = new ArrayList<Tag>();
		for(String subject: question.splitTags()) {
			Tag tag = this.tRepo.findBySubject(subject).orElse(null);
			if(tag == null) {
				tag = new Tag(subject);
				this.tRepo.save(tag);
			}
			// prevent dupe tags
			if(!questionsTags.contains(tag))
				questionsTags.add(tag);
		}
		Question newQuestion = new Question(question.getQuestion(), questionsTags);
		this.qRepo.save(newQuestion);
	}
	public Answer createAnswer(Answer answer) {
		return this.aRepo.save(answer);
	}
}
