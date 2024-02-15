import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "authors")
public class Author {
    /*id (Benzersiz yazar kimliği)

    name (Yazarın adı)

    birthDate (Yazarın doğum yılı)

    country (Yazarın ülkesi)*/
    @Id
    @Column(name = "author_id",columnDefinition = "serial")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int author_id;
    @Column(name = "author_name")
    private String author_name;
    @Column(name = "author_birth_date")
    private int author_birthDate;
    @Column(name = "author_country")
    private String author_country;
    @OneToMany(mappedBy = "author",fetch = FetchType.LAZY,cascade = CascadeType.REMOVE)//bir yazarın birçok kitabı olabilir
    private List<Book> bookList;

    public Author() {
    }

    public int getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(int author_id) {
        this.author_id = author_id;
    }

    public String getAuthor_name() {
        return author_name;
    }

    public void setAuthor_name(String author_name) {
        this.author_name = author_name;
    }

    public int getAuthor_birthDate() {
        return author_birthDate;
    }

    public void setAuthor_birthDate(int author_birthDate) {
        this.author_birthDate = author_birthDate;
    }

    public String getAuthor_country() {
        return author_country;
    }

    public void setAuthor_country(String author_country) {
        this.author_country = author_country;
    }

    public List<Book> getBookList() {
        return bookList;
    }

    public void setBookList(List<Book> bookList) {
        this.bookList = bookList;
    }

    @Override
    public String toString() {
        return "Author{" +
                "author_id=" + author_id +
                ", author_name='" + author_name + '\'' +
                ", author_birthDate=" + author_birthDate +
                ", author_country='" + author_country + '\'' +
                ", bookList=" + bookList +
                '}';
    }
}
