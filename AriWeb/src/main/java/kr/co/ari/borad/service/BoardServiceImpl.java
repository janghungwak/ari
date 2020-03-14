package kr.co.ari.borad.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.ari.borad.dao.BoardDAO;
import kr.co.ari.borad.vo.BoardVO;
import kr.co.ari.common.util.FileUtils;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Resource(name="boardDAO")
	private BoardDAO boardDAO;
	
	@Resource(name="fileUtiles")
	private FileUtils fileUtils;
	
	@Override
	public List<?> selectBoardList(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardDAO.selectBoardList(boardVO);
	}
	
	@Override
	public int selectBoardCount(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardDAO.selectBoardCount(boardVO);
	}
	
	@Override
	public BoardVO selectBoardView(String bno) {
		// TODO Auto-generated method stub
		BoardVO boardVO = boardDAO.selectBoardView(bno);
		//boardVO.setBcontent(StringEscapeUtils.unescapeHtml4(boardVO.getBcontent()));
		return boardVO;
	}
	
	@Override
	public int insertBoard(BoardVO boardVO, MultipartHttpServletRequest mrequest) {
		int result = boardDAO.insertBoard(boardVO);
		
		List<BoardVO> list= fileUtils.parseInsertFileInfo(boardVO, mrequest);
			
		int success = 0;
		for(int i=0; i<list.size(); i++) {
			success = boardDAO.insertFile(list.get(i));
		}
		
		if(success > 0) {
			boardVO.setFileExist("Y");
			boardDAO.updateFileExist(boardVO);
		}
		
		return result;
	}

	@Override
	public int updateBoard(BoardVO boardVO, MultipartHttpServletRequest mrequest) {
		int result = boardDAO.updateBoard(boardVO);
		
		boardDAO.deleteFile(boardVO.getBno());
		
		List<BoardVO> list = fileUtils.parseUpdateFileInfo(boardVO, mrequest);
		
		if(list.size() <= 0) {
			boardVO.setFileExist("N");
			boardDAO.updateFileExist(boardVO);
		}
		
		BoardVO vo = null;
		
		int success = 0;
		for(int i=0; i<list.size(); i++) {
			vo = list.get(i);
			
			if(vo.getIsnew().equals("Y")) {
				System.out.println("insert파일");
				success = boardDAO.insertFile(vo);
			}else {
				System.out.println("update파일");
				success = boardDAO.updateFile(vo);
			}
		}
		
		if(success > 0) {
			boardVO.setFileExist("Y");
			boardDAO.updateFileExist(boardVO);
		}
		
		return result;
	}

	@Override
	public int deleteBoard(BoardVO boardVO) {
		return boardDAO.deleteBoard(boardVO);
	}

	@Override
	public List<?> selectFileList(String bno) {
		// TODO Auto-generated method stub
		return boardDAO.selectFileList(bno);
	}

	@Override
	public BoardVO selectFile(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardDAO.selectFile(boardVO);
	}

	@Override
	public int insertReplyBoard(BoardVO boardVO, MultipartHttpServletRequest mrequest) {
		// TODO Auto-generated method stub
		boardDAO.updateBnoreseq(boardVO);
		
		List<BoardVO> list= fileUtils.parseInsertFileInfo(boardVO, mrequest);
		
		
		int success = 0;
		for(int i=0; i<list.size(); i++) {
			success = boardDAO.insertFile(list.get(i));
		}
		
		if(success > 0) {
			boardVO.setFileExist("Y");
			boardDAO.updateFileExist(boardVO);
		}
		
		return boardDAO.insertReplyBoard(boardVO);
	}

}
