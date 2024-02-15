import jakarta.persistence.*;

@Entity
@Table(name = "codes")
public class Code {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "code_id",columnDefinition = "serial")
    private int code;
    @Column(name = "code_group",nullable = false)
    private String group;
    @Column(name = "code_serial",nullable = false)
    private String serial;
    @OneToOne(mappedBy = "code")
    private Product product;

    public Code() {
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public String toString() {
        return "Code{" +
                "code=" + code +
                ", group='" + group + '\'' +
                ", serial='" + serial + '\'' +
                '}';
    }
}
