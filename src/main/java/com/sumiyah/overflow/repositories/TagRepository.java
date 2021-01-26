package com.sumiyah.overflow.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Repository;

import org.springframework.data.repository.CrudRepository;

import com.sumiyah.overflow.models.Tag;

@Repository
public interface TagRepository extends CrudRepository<Tag, Long>{
	List<Tag> findAll();
	Optional<Tag> findBySubject(String subject);
}
