package org.scamlet.book_management.Controller;


import jakarta.validation.Valid;
import org.scamlet.book_management.DTO.BookDTO;
import org.scamlet.book_management.Entity.Book;
import org.scamlet.book_management.Service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/books")
public class BookController {

    private final BookService bookService;

    @Autowired
    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping()
    public ResponseEntity<List<BookDTO>> getBookList() {
        Optional<List<BookDTO>> bookList = bookService.getBookList();
        return bookList.map(bookDTOS -> new ResponseEntity<>(bookDTOS, HttpStatus.OK)).orElseGet(() -> new ResponseEntity<>(HttpStatus.NO_CONTENT));
    }

    @PostMapping()
    public ResponseEntity<BookDTO> createBook(@Valid @RequestBody Book book) {
        Optional<BookDTO> result = bookService.createBook(book);
        return result.map(value -> new ResponseEntity<>(value, HttpStatus.CREATED)).orElseGet(() -> new ResponseEntity<>(HttpStatus.CONFLICT));
    }

    @PutMapping()
    public ResponseEntity<BookDTO> updateBook(@Valid @RequestBody Book book) {
        Optional<BookDTO> result = bookService.updateBook(book);
        return result.map(value -> new ResponseEntity<>(value, HttpStatus.OK)).orElseGet(() -> new ResponseEntity<>(HttpStatus.CONFLICT));
    }

    @DeleteMapping()
    public ResponseEntity<BookDTO> deleteBook(@Valid @RequestBody Long id) {
        Optional<BookDTO> result = bookService.deleteBook(id);
        return result.map(value -> new ResponseEntity<>(value, HttpStatus.OK)).orElseGet(() -> new ResponseEntity<>(HttpStatus.CONFLICT));
    }

    @GetMapping("/author/{author}")
    public ResponseEntity<List<BookDTO>> getBookListByAuthor(@PathVariable String author) {
        Optional<List<BookDTO>> bookListByAuthor = bookService.getBookListByAuthor(author);
        return bookListByAuthor.map(bookDTOS -> new ResponseEntity<>(bookDTOS, HttpStatus.OK)).orElseGet(() -> new ResponseEntity<>(HttpStatus.NO_CONTENT));
    }

    @GetMapping("/year/{year}")
    public ResponseEntity<List<BookDTO>> getBookListByYear(@PathVariable Integer year) {
        Optional<List<BookDTO>> bookListByYear = bookService.getBookListByYear(year);
        return bookListByYear.map(bookDTOS -> new ResponseEntity<>(bookDTOS, HttpStatus.OK)).orElseGet(() -> new ResponseEntity<>(HttpStatus.NO_CONTENT));
    }

    @GetMapping("/price")
    public ResponseEntity<List<BookDTO>> getBookListByPrice(@RequestParam Double price1, @RequestParam Double price2) {
        Optional<List<BookDTO>> bookListByYear = bookService.getBookListByPrice(price1, price2);
        return bookListByYear.map(bookDTOS -> new ResponseEntity<>(bookDTOS, HttpStatus.OK)).orElseGet(() -> new ResponseEntity<>(HttpStatus.NO_CONTENT));
    }

}
