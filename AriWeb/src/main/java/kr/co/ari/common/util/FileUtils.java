package kr.co.ari.common.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.ari.borad.vo.BoardVO;

@Component("fileUtiles")
public class FileUtils {
	
	@Value("${file.filepath}")
	private String fileupload;
	
	private String filePath;

	public List<BoardVO> parseInsertFileInfo(BoardVO boardVO, MultipartHttpServletRequest mrequest) {
		//파일경로
		filePath = File.separator + fileupload + File.separator;
		//파일명
		String originalName = null;
		//파일확장자
		String originalExt = null;
		//실제서버에 저장되는 파일명
		String storedName = null;
		
		MultipartFile multFile = null;
		Iterator<String> iterator = mrequest.getFileNames();

		BoardVO vo = null;
		List<BoardVO> fileList = new ArrayList<BoardVO>();
		System.out.println("파일경로:"+filePath);
		File file = new File(filePath);
		
		//디렉토리 없을때 생성함.
		if(file.exists()==false) {
			file.mkdirs();
		}
		
		while (iterator.hasNext()) {
			multFile=mrequest.getFile(iterator.next());
			//파일없을때까지
			if(multFile.isEmpty()==false) {
				//파일명
				originalName = multFile.getOriginalFilename();
				System.out.println(originalName);
				//파일확장자
				originalExt = multFile.getOriginalFilename().substring(originalName.lastIndexOf("."));
				//실제저장되는 파일명
				storedName = CommonUtils.getRandomString()+originalExt;
				
				file = new File(filePath+storedName);
				
				try {
					multFile.transferTo(file);
					
					vo = new BoardVO();
					vo.setBno(boardVO.getBno());
					vo.setFname(originalName);
					vo.setRname(storedName);
					vo.setFsize(multFile.getSize());
					fileList.add(vo);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return fileList;
		
	}

	public List<BoardVO> parseUpdateFileInfo(BoardVO boardVO, MultipartHttpServletRequest mrequest) {
		//파일경로
		filePath = File.separator + fileupload + File.separator;
		//파일명
		String originalName = null;
		//파일확장자
		String originalExt = null;
		//실제서버에 저장되는 파일명
		String storedName = null;
		
		MultipartFile multFile = null;
		Iterator<String> iterator = mrequest.getFileNames();
		
		String bno = boardVO.getBno();
		String fno = null;
		
		List<BoardVO> fileList = new ArrayList<BoardVO>();
		BoardVO vo = null;
		
		while (iterator.hasNext()) {
			multFile = mrequest.getFile(iterator.next());
			
			//파일없을때까지
			if(multFile.isEmpty()==false) {						
			//파일명
			originalName = multFile.getOriginalFilename();
			System.out.println(originalName);
			//파일확장자
			originalExt = multFile.getOriginalFilename().substring(originalName.lastIndexOf("."));
			//실제저장되는 파일명
			storedName = CommonUtils.getRandomString()+originalExt;
			
			try {
				multFile.transferTo(new File(filePath+storedName));
				
				vo = new BoardVO();
				vo.setBno(bno);
				vo.setFname(originalName);
				vo.setRname(storedName);
				vo.setFsize(multFile.getSize());
				vo.setIsnew("Y");
				fileList.add(vo);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			String requestName = multFile.getName();			
			System.out.println(requestName);
			fno = "IDX_" + requestName.substring(requestName.indexOf("_")+1);
			System.out.println(fno);
			System.out.println(mrequest.getParameter(fno));
			Map<String, Object> map = new HashMap<String, Object>();
			map.put(fno, mrequest.getParameter(fno));
			if(map.containsKey(fno) == true && mrequest.getParameter(fno) != null) {
				vo = new BoardVO();
				vo.setIsnew("N");
				vo.setFno((String) map.get(fno));
				fileList.add(vo);
			}
		}
			
		}		
		return fileList;
	}
}
