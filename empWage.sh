##empDaily Wage Code
#!/bin/bash -x
isFullTime=2;
maxHrsInMonth=10;
empRatePerHour=20;
totalEmpHrs=0;

numberOfWorkingDays=20;
totalWorkingDays=0;
function getEmpWage()
{
        local empWage=$1;
        empHours=$(( $empWage * $empRatePerHour ))
        echo $(($empHours))
}

function getWorkingHours()
{
        local empCheck=$1
        case $empCheck in
        $isFullTime)
                empHours=8
                ;;
        *)
                empHours=0
                ;;
esac
echo $empHours
}
while [[ $totalEmpHrs -lt $maxHrsInMonth &&
                                $totalWorkingDays -lt $numberOfWorkingDays ]]
do
        ((totalWorkingDays++))
        #empCheck=$((RANDOM%3))
        empCheck=2;
        empHours="$(getWorkingHours $empCheck)"
        totalEmpHrs=$(( $totalEmpHrs + $empHours ))
        dailyWage[$totalWorkingDays]=$(getEmpWage $empHours)
done
totalSalary=$(($totalEmpHrs * $empRatePerHour))
echo ${dailyWage[@]}




##Daily Wage total Wage Code Added
#!/bin/bash -x
#isPartTime=1;
isFullTime=2;
maxHrsInMonth=10;
empRatePerHour=20;
totalEmpHrs=0;

numberOfWorkingDays=20;
totalWorkingDays=0;
function getEmpWage()
{
        local empWage=$1;
        empHours=$(( $empWage * $empRatePerHour ))
        echo $(($empHours))
}

function getWorkingHours()
{
        local empCheck=$1
        case $empCheck in
        $isFullTime)
                empHours=8
                ;;
        *)
                empHours=0
                ;;
esac
echo $empHours
}
while [[ $totalEmpHrs -lt $maxHrsInMonth &&
                                $totalWorkingDays -lt $numberOfWorkingDays ]]
do
        ((totalWorkingDays++))
        #empCheck=$((RANDOM%3))
        empCheck=2;
        empHours="$(getWorkingHours $empCheck)"
        totalEmpHrs=$(( $totalEmpHrs + $empHours ))
        dailyWage[$totalWorkingDays]=$(getEmpWage $empHours)
done
totalSalary=$(($totalEmpHrs * $empRatePerHour))
echo ${dailyWage[@]}



##day daily wage total wage code added
#!/bin/bash -x
#isPartTime=1;
isFullTime=2;
maxHrsInMonth=10;
empRatePerHour=20;
totalEmpHrs=0;

numberOfWorkingDays=20;
totalWorkingDays=0;
function getEmpWage()
{
        local empWage=$1;
        empHours=$(( $empWage * $empRatePerHour ))
        echo $(($empHours))
}

function getWorkingHours()
{
        local empCheck=$1
        case $empCheck in
        $isFullTime)
                empHours=8
                ;;
        *)
                empHours=0
                ;;
esac
echo $empHours
}
while [[ $totalEmpHrs -lt $maxHrsInMonth &&
                                $totalWorkingDays -lt $numberOfWorkingDays ]]
do
        ((totalWorkingDays++))
        #empCheck=$((RANDOM%3))
        empCheck=2;
        empHours="$(getWorkingHours $empCheck)"
        totalEmpHrs=$(( $totalEmpHrs + $empHours ))
        dailyWage[$totalWorkingDays]=$(getEmpWage $empHours)
done
totalSalary=$(($totalEmpHrs * $empRatePerHour))
echo ${dailyWage[@]}




##emp Attendance code added
#!/bin/bash -x
isPresent=1
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq $isPresent ]
then
echo "employee is present"
else
echo "employee is absent"
fi




##emp salary using switch code added 
isPartTime=1
isFullTime=2
empRatePerHours=20
empCheck=$((RANDOM%3))

case $empCheck in

        $isFullTime)
                empHours=8
                ;;
        $isPartTime)
                empHours=4
                ;;
        *)
                empHours=0
                ;;
esac
salary=$(($empHours * $empRatePerHours));
echo $salary




##emp wage for month code added
#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHours=20
totalSalary=0
empCheck=$((RANDOM%3))
numberOfDays=20
for (( day=1;day<=$numberOfDays;day++ ))
do
case $empCheck in
	$isFullTime)
		empHours=8
		;;
	$isPartTime)
		empHours=4
		;;
	*)
		empHours=0
		;;
esac
salary=$(($empHours * $empRatePerHours))
totalSalary=$(($totalSalary + $salary))
done
echo $totalSalary




##emp Wage total salary using function
#!/bin/bash -x
#constants for the program
isPartTime=1
isFullTime=2
empRatePerHours=20
maxHoursInMonth=10
numberWorkingDays=20

#variables
totalEmpHours=0
totalWorkingDays=0

function getWorkingHours(){

	#local $empCheck=$1 
	case $empCheck in 
	$isFullTime)
		empHours=8
		;;
	$isPartTime)
		empHours=4
		;;
	*)
		empHours=0
		;;
	esac
	echo $empHours
}
while [[ $totalEmpHours -lt $maxHoursInMonth &&
	 $totalWorkingDays -lt $numberWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
empHours="$(getWorkingHours $empCheck)"
totalEmpHours=$(($totalEmpHours + $empHours))
done
totalSalary=$(($totalEmpHours * $empRatePerHours))




##emp wage working Hours code added
#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHours=20
totalSalary=0
empCheck=$((RANDOM%3))
numberOfDays=20
for (( day=1;day<=$numberOfDays;day++ ))
do
case $empCheck in
	$isFullTime)
		empHours=8
		;;
	$isPartTime)
		empHours=4
		;;
	*)
		empHours=0
		;;
esac
salary=$(($empHours * $empRatePerHours))
totalSalary=$(($totalSalary + $salary))
done
echo $totalSalary
