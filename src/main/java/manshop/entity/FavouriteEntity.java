package manshop.entity;

import javax.persistence.*;

@Entity
@Table(name="favourite")
public class FavouriteEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name="userId")
    private UserEntity userEntity;

    @ManyToOne
    @JoinColumn(name="productId")
    private ProductEntity productEntity;

    public FavouriteEntity() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

    public ProductEntity getProductEntity() {
        return productEntity;
    }

    public void setProductEntity(ProductEntity productEntity) {
        this.productEntity = productEntity;
    }
}
