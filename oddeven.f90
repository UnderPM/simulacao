subroutine OddEven(inArray,eArray,evenCounter,oArray,oddCounter,realCounter)
    implicit none
    integer, dimension(20), intent(in)::inArray

    integer, dimension(20), intent(out)::eArray
    integer, dimension(20), intent(out)::oArray
    integer, intent(out)::evenCounter
    integer, intent(out)::oddCounter
    integer, intent(out)::realCounter

    integer::index = 0

    do index = 1,20,1
        eArray(index) = -999
        oArray(index) = -999
    end do

    evenCounter = 0
    oddCounter = 0
    realCounter = 0

    do index = 1,20,1
        if(inArray(index) /= -999) then
            if(mod(inArray(index),2) == 0) then
                eArray(evenCounter + 1) = int(inArray(index))
                evenCounter = evenCounter + 1
            elseif(mod(inArray(index),2) < 0 .OR. mod(inArray(index),2) > 0) then
                oArray(oddCounter + 1) = int(inArray(index))
                oddCounter = oddCounter + 1
            end if
        end if
    end do

end subroutine
