package poly.controller;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.NotiDTO;
import poly.service.INotiService;


@Controller
public class NotiController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="NotiService")
	private INotiService notiService;
	
	@RequestMapping(value="/noti/notiReg")
	public String NotiReg() {
		
		return "/noti/notiReg";
	}
	@RequestMapping(value="/noti/notiRegProc")
	public String NotiRegProc(HttpServletRequest request, Model model) {
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		NotiDTO nDTO = new NotiDTO();
		nDTO.setTitle(title);
		nDTO.setContent(contents);
		
		int result = 0;
				
		try {
			result = notiService.insertNotiInfo(nDTO);
		} catch(Exception e) {
			e.printStackTrace();
		}
		if(result>0) {
			model.addAttribute("url","/noti/notiList.do");
			model.addAttribute("msg", "등록 성공");
		} else {
			model.addAttribute("url","/noti/notiReg.do");
			model.addAttribute("msg", "등록 실패");
		}
		return "/redirect";
	}
	
	@RequestMapping(value="/noti/notiList")
	public String NotiList(Model model) {
		List<NotiDTO> nList = new ArrayList<>();
		
		try {
			nList = notiService.getNotiList();
		} catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("nList", nList);
		return "/noti/notiList";
	}
	@RequestMapping(value="/noti/notiDetail")
	public String NotiDetail(HttpServletRequest request, Model model) {
		String seq = request.getParameter("seq");
		
		NotiDTO nDTO = new NotiDTO();
		
		try {
			nDTO = notiService.getNotiDetail(seq);
		} catch(Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("nDTO", nDTO);
		
		return "/noti/notiDetail";	
	}
	@RequestMapping(value="/noti/notiModify")
	public String NotiModify(HttpServletRequest request, Model model) {
		String seq = request.getParameter("seq");
		
		NotiDTO nDTO = new NotiDTO();
		try {
			nDTO = notiService.getNotiDetail(seq);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("nDTO", nDTO);
		
		return "/noti/notiModify";
	}
	@RequestMapping(value="/noti/notiModifyProc")
	public String NotiModifyProc(HttpServletRequest request, Model model) {
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String seq = request.getParameter("seq");
		
		NotiDTO nDTO = new NotiDTO();
		nDTO.setTitle(title);
		nDTO.setContent(contents);
		nDTO.setSeq(seq);
		
		int result = 0;
		
		try {
			result = notiService.updateNoti(nDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(result>0) {
			model.addAttribute("url","/noti/notiList.do");
			model.addAttribute("msg","수정 성공");
		} else {
			model.addAttribute("url","/noti/notiModify.do");
			model.addAttribute("msg","수정 실패");
		}
		
		return "/redirect";
	}
	@RequestMapping(value="/noti/notiDelete")
	public String NotiDelete(HttpServletRequest request, Model model) {
		NotiDTO nDTO = new NotiDTO();
		
		String seq = request.getParameter("seq");
		
		int result = 0;
		
		try {
			result = notiService.deleteNoti(seq);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(result>0) {
			model.addAttribute("url","/noti/notiList.do");
			model.addAttribute("msg","삭제 성공");
		} else {
			model.addAttribute("url","/noti/notiDetail.do");
			model.addAttribute("msg","삭제 실패");
		}
		
		return "/redirect";
	}
}