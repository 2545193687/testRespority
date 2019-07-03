package cn.xmjdt.tourismplatform.domain.entity;

import cn.mithrandirw.tf.admin.commons.domain.IdEntity;
import lombok.Data;
import javax.persistence.Table;
/**
 * Stu
 * @author codegen
 * @date 2019-07-02 14:47:41
 */
@Data
@Table(name="t_core_stu")
public class Stu extends IdEntity {
	
	public static final String FIELD_NAME = "name";

	public static final String FIELD_CODE = "code";
	/**
	 * 分支测试
	 */

	/**
     * 姓名
     */
	private String name;		
	
    /**
     * 编号
     */
	private String code;		
	

}