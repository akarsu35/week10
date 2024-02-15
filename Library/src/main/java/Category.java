import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "categories")
public class Category {
    /*id (Benzersiz kategori kimliği)

name (Kategori adı)

description (Kategori tanımı)*/
    @Id
    @Column(name = "category_id",columnDefinition = "serial")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int category_id;
    @Column(name = "category_name")
    private String category_name;
    @Column(name = "category_description")
    private String category_description;
    @ManyToMany(mappedBy = "categoryList")//birçok kategoride birden fazla kitap vardır
    private List<Book> bookList;

    public Category() {
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public String getCategory_description() {
        return category_description;
    }

    public void setCategory_description(String category_description) {
        this.category_description = category_description;
    }

    public List<Book> getBookList() {
        return bookList;
    }

    public void setBookList(List<Book> bookList) {
        this.bookList = bookList;
    }

    @Override
    public String toString() {
        return "Category{" +
                "category_id=" + category_id +
                ", category_name='" + category_name + '\'' +
                ", category_description='" + category_description + '\'' +
                ", bookList=" + bookList +
                '}';
    }
}
