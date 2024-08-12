package org.scamlet.book_management.Service;


import org.modelmapper.ModelMapper;
import org.scamlet.book_management.DTO.BookDTO;
import org.scamlet.book_management.Entity.Book;
import org.scamlet.book_management.Exception.BookException;
import org.scamlet.book_management.Repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookService {

    private final BookRepository bookRepository;
    private final ModelMapper modelMapper;

    @Autowired
    public BookService(BookRepository bookRepository, ModelMapper modelMapper) {
        this.bookRepository = bookRepository;
        this.modelMapper = modelMapper;
    }

    public Optional<List<BookDTO>> getBookList() {
        List<Book> bookList = bookRepository.findAll();
        if (bookList.isEmpty()) {
            throw new BookException("No books found");
        }
        return Optional.of(bookList.stream().map(book -> modelMapper.map(book, BookDTO.class)).toList());
    }

    public Optional<BookDTO> createBook(Book book) {
        try {
            Book createdBook = bookRepository.save(book);
            BookDTO bookDTO = modelMapper.map(createdBook, BookDTO.class);
            return Optional.of(bookDTO);
        } catch (Exception e) {
            throw new BookException("Book could not be created! \n" +e.getMessage());
        }
    }

    public Optional<BookDTO> updateBook(Book book) {
        Optional<Book> findBook = bookRepository.findById(book.getId());
        if (findBook.isPresent()) {
            try {
                Book bookToUpdate = findBook.get();
                bookToUpdate.setTitle(book.getTitle());
                bookToUpdate.setAuthor(book.getAuthor());
                bookToUpdate.setPrice(book.getPrice());
                bookRepository.save(bookToUpdate);
                BookDTO bookDTO = modelMapper.map(bookToUpdate, BookDTO.class);
                return Optional.of(bookDTO);
            } catch (Exception e) {
                throw new BookException("Book could not be updated! \n" +e.getMessage());
            }
        }
        throw new BookException("Cannot find book with id " + book.getId());
    }

    public Optional<BookDTO> deleteBook(Long id) {
        Optional<Book> findBook = bookRepository.findById(id);
        if (findBook.isPresent()) {
            try {
                bookRepository.deleteById(id);
                BookDTO bookDTO = modelMapper.map(findBook.get(), BookDTO.class);
                return Optional.of(bookDTO);
            } catch (Exception e) {
                throw new BookException("Book could not be deleted! \n" +e.getMessage());
            }
        }
        throw new BookException("Cannot find book with id " + id);
    }

    public Optional<List<BookDTO>> getBookListByAuthor(String author) {
        List<Book> bookList = bookRepository.findByAuthor(author);
        return Optional.of(bookList.stream().map(book -> modelMapper.map(book, BookDTO.class)).toList());
    }

    public Optional<List<BookDTO>> getBookListByYear(Integer year) {
        List<Book> bookList = bookRepository.findByYearPublished(year);
        return Optional.of(bookList.stream().map(book -> modelMapper.map(book, BookDTO.class)).toList());
    }

    public Optional<List<BookDTO>> getBookListByPrice(Double price1, Double price2) {
        List<Book> bookList = bookRepository.findByPriceBetween(price1, price2);
        return Optional.of(bookList.stream().map(book -> modelMapper.map(book, BookDTO.class)).toList());
    }

}
