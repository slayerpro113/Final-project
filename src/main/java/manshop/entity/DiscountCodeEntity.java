package manshop.entity;

import javax.persistence.*;

@Entity
@Table(name="discountCode")
public class DiscountCodeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name="code")
    private String code;

    @Column(name="isUsed")
    private String isUsed;

    public DiscountCodeEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getIsUsed() {
        return isUsed;
    }

    public void setIsUsed(String isUsed) {
        this.isUsed = isUsed;
    }
}
