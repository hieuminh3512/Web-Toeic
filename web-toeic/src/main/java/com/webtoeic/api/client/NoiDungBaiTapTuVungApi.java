package com.webtoeic.api.client;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import com.webtoeic.entities.*;
import com.webtoeic.service.NoiDungBaiTapTuVungService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.webtoeic.service.BaiTapTuVungService;
import com.webtoeic.service.CommentTuVungService;
import com.webtoeic.service.NguoiDungService;
import com.webtoeic.service.NoiDungBaiTapTuVungService;
@RestController
@RequestMapping("api/client/vocab")
public class NoiDungBaiTapTuVungApi {

	@Autowired
	private NguoiDungService nguoiDungService;

	@Autowired
	private CommentTuVungService commentTuVungService;
	@Autowired
	private BaiTapTuVungService baitaptuvungService;

	@Autowired
	private NoiDungBaiTapTuVungService noidungbaitaptuvungService;

	@ModelAttribute("loggedInUser")
	public NguoiDung getSessionUser(HttpServletRequest request) {
		return (NguoiDung) request.getSession().getAttribute("loggedInUser");
	}

	@GetMapping("/baitaptuvungId={baitaptuvungId}")
	public ResponseEntity<List<NoiDungBaiTapTuVung>> getListCauHoiByBaiTapDocId(@PathVariable("baitaptuvungId") int idVocab) {
		Optional<BaiTapTuVung> bttuvung = baitaptuvungService.getBaiTuVungById(idVocab);

		List<NoiDungBaiTapTuVung> list = noidungbaitaptuvungService.getListBaiTapTuVung(bttuvung.get());
		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	@RequestMapping(value = "/ajaxCmtVocab/{contentComment}/{baitaptuvungId}", method = RequestMethod.POST)
	@ResponseBody
	public List<String> getAjax(@PathVariable("contentComment") String contentComment,
			@PathVariable("baitaptuvungId") int id) {

		List<String> response = new ArrayList<String>();

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		NguoiDung currentUser = nguoiDungService.findByEmail(auth.getName());

		List<BaiTapTuVung> baitaptuvung = baitaptuvungService.getBaiTapTuVung(id);

		// save comment
		CommentTuVung cmt = new CommentTuVung();
		cmt.setBaitaptuvung(baitaptuvung.get(0));
		cmt.setNguoidung(currentUser);
		cmt.setCmtvocabularycontent(contentComment);
		commentTuVungService.save(cmt);

		// get all comment by baituvung
//		List<CommentTuVung> listCmt = commentTuVungService.findByBaiTapTuVung(baitaptuvung.get(0));
//		int last_cmt = listCmt.size()-1;
//		System.out.println(cmt.toString());
//    	return listCmt.get(last_cmt);

		response.add(cmt.toString());
		return response;

	}

}
