package org.scamlet.book_management.Entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name="books")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @NotNull
    @Size(min=2, max=100)
    @Column(name="title")
    private String title;

    @NotNull
    @Size(min=2, max=100)
    @Column(name="author")
    private String author;

    @NotNull
    @Column(name="year_published")
    private Integer yearPublished;

    @NotNull
    @Size(min=2, max=100)
    @Column(name="isbn")
    private String isbn;

    @NotNull
    @Column(name="price")
    private Double price;



}
