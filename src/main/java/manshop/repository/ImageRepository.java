package manshop.repository;

import manshop.entity.ImageEntity;
import manshop.entity.ProductEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ImageRepository extends CrudRepository<ImageEntity, Integer> {
    @Query(value="select i.* from image i where i.id = (select max(id) from  image)",nativeQuery = true)
    ImageEntity findLastId();

}
