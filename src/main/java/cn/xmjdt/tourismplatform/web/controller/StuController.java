package cn.xmjdt.tourismplatform.web.controller;

import cn.xmjdt.tourismplatform.domain.entity.Stu;
import cn.xmjdt.tourismplatform.domain.vo.StuVo;
import cn.xmjdt.tourismplatform.domain.form.StuForm;
import cn.mithrandirw.tf.admin.commons.api.controller.admin.AdminController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Stu管理控制器
 * @author codegen
 * @date 2019-07-02 14:47:41
 */
@Controller
@RequestMapping("/admin/stu")
public class StuController extends AdminController<Stu,StuVo,StuForm> {

	@Override
	protected String getPageFolder() {
		return "stu";
	}

}
