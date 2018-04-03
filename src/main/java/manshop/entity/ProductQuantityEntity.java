package manshop.entity;

import javax.persistence.*;

@Entity
@Table(name="product_quantity")
public class ProductQuantityEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name="quantity")
    private int quantity;

    @OneToOne(mappedBy = "productQuantityEntity", cascade = {CascadeType.ALL})
    private ProductEntity productEntity;


    public ProductQuantityEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public ProductEntity getProductEntity() {
        return productEntity;
    }

    public void setProductEntity(ProductEntity productEntity) {
        this.productEntity = productEntity;
    }
}
