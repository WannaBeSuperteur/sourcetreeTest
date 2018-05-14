/*
 * 소설 출간년도와 제목 정보를 토대로 소설가 안내 문자열을 작성하려고 한다.
 *
 * 소설 정보 이용해서 안내 문자열의 형식에 맞게 안내 문자열을 만드시오.
 *
 * 콘솔에 Well Done이 출력되면 성공
 */
import Foundation

typealias Novel = (year:Int, title:String)

let novels:[Novel] = [Novel(year: 1982, title:"티모시 아처의 환생"),
                      Novel(year: 1981, title:"성스러운 침략"),
                      Novel(year: 1978, title:"발리스"),
                      Novel(year: 1973, title:"스캐너 다클리")]


// novels 배열을 이용해서 아래의 resultString에 안내 문구 문자열을 만드시오. 생성되는 안내 문구는 아래 expected 문자열과 같아야 한다.

var resultString: String

resultString = "필립딕의 소설은 다음과 같다 :"

// 이 곳에 코드를 작성하시오. reduce() 사용시 가산점

for i in 0..<4 {
    resultString += "\n\(novels[i].year)년 작품인 '\(novels[i].title)'"
}

// 아래는 작업 결과를 확인하는 코드다. 수정하지 마시오.

let expected = "필립딕의 소설은 다음과 같다 :\n1982년 작품인 '티모시 아처의 환생'\n1981년 작품인 '성스러운 침략'\n1978년 작품인 '발리스'\n1973년 작품인 '스캐너 다클리'";

assert(resultString == expected, "입력값 : " + resultString)

print("Well Done")
