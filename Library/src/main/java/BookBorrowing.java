import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "book_borrowings")
public class BookBorrowing {
    /*id (Benzersiz kimliği)

borrowerName (Kitap ödünç alan kişi adı soyadı)

borrowingDate (Kitap ödünç alma tarihi)

returnDate (Kitabın teslim edildiği tarih, ilk kayıtta null olacak. Kitap teslim edilince tarih güncellenecek)*/
    @Id
    @Column(name = "borrower_id",columnDefinition = "serial")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    @Column(name = "borrower_name")
    String borrowerName;
    @Column(name = "borrowing_date")
    String borrowingDate;
    @Column(name = "return_date")
    String returnDate;
    @ManyToOne()
    @JoinColumn(name = "borrow_book_id",referencedColumnName = "book_id")
    private Book book;
    public BookBorrowing() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBorrowerName() {
        return borrowerName;
    }

    public void setBorrowerName(String borrowerName) {
        this.borrowerName = borrowerName;
    }

    public String getBorrowingDate() {
        return borrowingDate;
    }

    public void setBorrowingDate(String borrowingDate) {
        this.borrowingDate = borrowingDate;
    }

    public String getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(String returnDate) {
        this.returnDate = returnDate;
    }

    @Override
    public String toString() {
        return "BookBorrowing{" +
                "id=" + id +
                ", borrowerName='" + borrowerName + '\'' +
                ", borrowingDate='" + borrowingDate + '\'' +
                ", returnDate='" + returnDate + '\'' +
                '}';
    }
}
