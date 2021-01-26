package com.sumiyah.overflow.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sumiyah.overflow.models.Answer;

@Repository
public interface AnswerRepository extends CrudRepository<Answer, Long>{

}
