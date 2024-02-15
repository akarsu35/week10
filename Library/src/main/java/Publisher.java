import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "publishers")
public class Publisher {
    /*id (Benzersiz kimliği)

name (Yayınevi ismi)

establishmentYear (Kuruluş yılı)

address (Yayınevi adresi)*/
    @Id
    @Column(name = "publisher_id",columnDefinition = "serial")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int publisher_id;
    @Column(name = "publisher_name")
    private String publisher_name;
    @Column(name = "publisher_establishment_year")
    private int publisher_establishmentYear;
    @Column(name = "publisher_address")
    private String publisher_address;
    @OneToMany(mappedBy = "publisher")//bir yayınevi birçok kitabı olabilir
    private List<Book> bookList;

    public Publisher() {
    }

    public int getPublisher_id() {
        return publisher_id;
    }

    public void setPublisher_id(int publisher_id) {
        this.publisher_id = publisher_id;
    }

    public String getPublisher_name() {
        return publisher_name;
    }

    public void setPublisher_name(String publisher_name) {
        this.publisher_name = publisher_name;
    }

    public int getPublisher_establishmentYear() {
        return publisher_establishmentYear;
    }

    public void setPublisher_establishmentYear(int publisher_establishmentYear) {
        this.publisher_establishmentYear = publisher_establishmentYear;
    }

    public String getPublisher_address() {
        return publisher_address;
    }

    public void setPublisher_address(String publisher_address) {
        this.publisher_address = publisher_address;
    }

    public List<Book> getBookList() {
        return bookList;
    }

    public void setBookList(List<Book> bookList) {
        this.bookList = bookList;
    }

    @Override
    public String toString() {
        return "Publisher{" +
                "publisher_id=" + publisher_id +
                ", publisher_name='" + publisher_name + '\'' +
                ", publisher_establishmentYear=" + publisher_establishmentYear +
                ", publisher_address='" + publisher_address + '\'' +
                ", bookList=" + bookList +
                '}';
    }
}
