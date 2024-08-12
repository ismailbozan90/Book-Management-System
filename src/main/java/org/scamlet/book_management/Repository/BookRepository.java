package org.scamlet.book_management.Repository;

import org.scamlet.book_management.Entity.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {
    List<Book> findByAuthor(String author);
    List<Book> findByYearPublished(Integer year);
    List<Book> findByPriceBetween(Double price1, Double price2);
}
