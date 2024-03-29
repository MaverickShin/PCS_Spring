package ptms.mvc.tpj.TrainerService;

import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface TrainerService {

	// 훈련사 등록
	public void insertTrainer(HttpServletRequest req, Model model) throws ParseException;
	
	// 훈련사 리스트
	public void TrainerList(HttpServletRequest req, Model model);
	
	// 훈련사 정보
	public void TrainerInfo(HttpServletRequest req, Model model);
	
	// 훈련사 프로필 화면
	public void updateTrainer(HttpServletRequest req, Model model);
	
	// 훈련사 정보 수정 처리
	public void updateTrainerAction(HttpServletRequest req, Model model) throws ParseException;
	
	// 훈련사 등록 탈퇴
	public void deleteTrainer(HttpServletRequest req, Model model);
	
	// 훈련 예약
	public void reserveTrainer(HttpServletRequest req, Model model) throws ParseException;
		
	// 결제하기
	public void payToTrainer(HttpServletRequest req, Model model);

	// 예약된 훈련 반려동물 목록
	public void TraineeList(HttpServletRequest req, Model model);
	
	// 훈련 예약 취소(훈련사)
	public void withrawTrainer(HttpServletRequest req, Model model);
	
	// 훈련 예약 취소(반려인)
	public void withrawTrainee(HttpServletRequest req, Model model);
	
	// 훈련사 훈련 수락
	public void updateAcceptTraining(HttpServletRequest req, Model model);
	
	// 훈련사 훈련 거절
	public void updateDenyTraining(HttpServletRequest req, Model model);
	
	// 훈련사 훈련 수락 리스트
	public void acceptTrainingList(HttpServletRequest req, Model model);
	
	// 훈련사 훈련 거절 리스트
	public void denyTrainingList(HttpServletRequest req, Model model);
	
	// 훈련사 매칭완료 리스트
	public void TrainingServiceComplete(HttpServletRequest req, Model model);
	
	// 고객용 훈련 요청 결과 리스트(요청대기)
	public void custReqResultwait(HttpServletRequest req, Model model);
	
	// 고객 훈련 요청 취소
	public void cancelRequestTraining(HttpServletRequest req, Model model);
	
	// 고객용 훈련 요청 결과 리스트(수락)
	public void custReqResultAccept(HttpServletRequest req, Model model);
	
	// 고객용 훈련 요청 결과 리스트(거절)
	public void custReqResultDeny(HttpServletRequest req, Model model);
	
	// 고객용 훈련 완료 리스트
	public void trainingComplete(HttpServletRequest req, Model model);
	
	// 훈련 후기 작성
	public void writeTrainingReview(HttpServletRequest req, Model model);
	
	// 훈련사 지원 중복체크
	public void trainerDupChk(HttpServletRequest req, Model model);
	/*
	// 훈련 후기 미리보기 - 평점순
	public void previewTrainingGrade(HttpServletRequest req, Model model);
	
	// 훈련 후기 미리보기 - 최신등록순
	public void newTrainerList(HttpServletRequest req, Model model);
	
	// 훈련 후기 미리보기 - 후기 많은 순
	public void lotsOfReviews(HttpServletRequest req, Model model);
	*/
	// 고객 - 결제 완료 내역
	public void payment(HttpServletRequest req, Model model);
	
	// 매칭확정하기
	public void updateTrainingComplete(HttpServletRequest req, Model model);
	/* 21-09-29 / 신도빈  / 결제완료 후 요청테이블 상태 업데이트 'TQ_ST : 1' */
	// 고객 - 카카오페이 결제 완료 후 요청 테이블 상태 업데이트
	public int paySuccessUpdate(HttpServletRequest req, Model model);
	
	// 내후기 보기
	public void getReviewInfo(HttpServletRequest req, Model model);
	
	// 내후기 수정
	public void modifyReview(HttpServletRequest req, Model model);
	
	// 내후기 수정처리
	public void modifyReviewAction(HttpServletRequest req, Model model);
	
	// 내후기 삭제처리
	public void deleteTrainingReview(HttpServletRequest req, Model model);
	
	// 사이드바
	public void sidebar(HttpServletRequest req, Model model);
	
}
