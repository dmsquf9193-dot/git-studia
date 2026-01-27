package kr.co.training;

import java.util.Scanner;

public class Ex01_if문제 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		// Q1. 점수를 입력받아 60점 이상이면 "합격", 아니면 "불합격" 출력
               System.out.print("점수 : ");
		       int inputNumber = sc.nextInt();
		    
		       int inputnumber = 60;
		       if(inputnumber % 60 >= 60) {
		    	System.out.println("합격");
		      }   else if(inputnumber %60 <= 59) {
		    	System.out.println("불합격");
		      }

		// Q2. 정수 하나를 입력받아 짝수인지 홀수인지 출력
		    System.out.print("숫자 : ");
			int number2 = sc.nextInt();
		   
			
            if(number2 % 2 == 0) {
		    	 System.out.println("짝수");
		  } else if(number2 % 2 == 1) {
		    	 System.out.println("홀수");
		  }
		    
		// Q3. 나이를 입력받아 20세 이상이면 "성인", 아니면 "미성년자" 출력
            System.out.print("나이 : ");
			int age = sc.nextInt();
           
			if (age %20 >= 20) {
				System.out.println("성인");
			} else if(age %20 <= 20) {
				System.out.println("미성년자");	
			}
			
        // Q4. 비밀번호가 "1234"이면 "로그인 성공", 아니면 "로그인 실패" 출력
			System.out.print("비밀번호를 입력하세요: ");
			 String password = sc.next();

					if (password.equals ("1234")) {
					    System.out.print("로그인 성공");
				} else  {
					    System.out.print("로그인 실패");
				}
			

		// Q7. 나이를 입력받아 요금 출력
		// - 12세 이하 : 3,000원
		// - 18세 이하 : 5,000원
		// - 19세 이상 : 10,000원
			System.out.print("나이: ");
			int age2 = sc.nextInt();
			
			if(age2 <= 12) {
				System.out.print("3,000원");
			} else if(age2 <= 18) {
				System.out.print("5,000원");
			} else if(age2 <= 19) {
				System.out.print("10,000원");
			}
			
			

		// Q8. 아이디와 비밀번호를 입력받아 아이디가 "admin"이고 비밀번호가 "1234"면 관리자 로그인 성공
			String q8Id = "admin";
			String q8Password = "1234";
			
			if("admin".equals(q8Id) && "1234" .equals(q8Password)) {
				System.out.println("관리자 로그인 성공");
			}

		// Q9. 점수와 결석 여부를 입력받아 결과 출력
		// - 결석 여부는 true, false로 받음
		// - 결석이면 무조건 F
		// - 90 이상 A
		// - 80 이상 B
		// - 70 이상 C
		// - 그 외 F
			// int q9Score = 89;
			// boolean q9 = true;
			
			// if(!q9) {
				// System.out.println("F");
			// } else if ()
			// }

		// Q10. 스캐너로 사용자로부터 몇 월인지 입력 받으세요.
		 // - 해당하는 계절과 출력 메시지는 아래와 같습니다.
		 // - 3, 4, 5 : 봄
		 // - 6, 7, 8 : 여름
		 // - 9, 10, 11 : 가을
		 // - 12, 1, 2 : 겨울
		 // - 그 외 : 해당하는 계절이 없습니다.
		        // ex) 1을 입력 받을 경우 “겨울” 출력
		             // 위의 예시를 활용하여 OR 연산자 또는 AND 연산자를 활용하여 문제를 풀어보세요.
	// int q10month = 7;
	
	// if(q10month >= 3 && q10month <= 5 ) {
	// 	System.out.println("봄");
	// } else if(q10month == 6 || q10month == 7 || q10month == 8) {
	// 	System.out.println("여름");
	// } else if(q10month == 9 || q10month == 10 || q10month == 11) {
		
	


	}

}
