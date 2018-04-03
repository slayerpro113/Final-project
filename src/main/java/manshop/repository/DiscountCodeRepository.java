package manshop.repository;

import manshop.entity.DiscountCodeEntity;
import org.springframework.data.repository.CrudRepository;

public interface DiscountCodeRepository extends CrudRepository<DiscountCodeEntity,Integer> {
    DiscountCodeEntity findByCode(String code);
}
