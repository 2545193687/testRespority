package cn.xmjdt.tourismplatform.domain.vo;

import lombok.Data;
import java.util.Date;
import com.alibaba.fastjson.annotation.JSONField;

/**
 * Stu VO
 * @author codegen
 * @date 2019-07-02 14:47:41
 */
@Data
public class StuVo {
	
    /**
     * 主键
     */
	private Long id;

    /**
     * 创建时间
     */
	private Date createdTime;
	
    /**
     * 最后更新时间
     */
	private Date updatedTime;	
	
    /**
     * 数据状态
     */
	private String dataState;

    /**
     * 姓名
     */
	private String name;	
	
    /**
     * 编号
     */
	private String code;	
	

}