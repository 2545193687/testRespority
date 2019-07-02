package cn.xmjdt.tourismplatform.domain.form;

import cn.mithrandirw.tf.admin.commons.domain.Idable;
import lombok.Data;
import java.util.Date;
import org.hibernate.validator.constraints.Length;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * Stu表单
 * @author codegen
 * @date 2019-07-02 14:47:41
 */
@Data
public class StuForm implements Idable {
	
	private Long id;

	@Length(min = 0,max = 255,message = "姓名长度为0~255个字符")
	private String name;
	
	@Length(min = 0,max = 255,message = "编号长度为0~255个字符")
	private String code;
	

}