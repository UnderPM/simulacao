subroutine x(xArray,oArray,eArray,oCounter,eCounter,n,tempO,tempE)
    implicit none
    integer, intent(out)::n
    integer, dimension(20), intent(in)::oArray
    integer, dimension(20), intent(in)::eArray
    real, dimension(9), intent(out)::xArray
    integer::index = 1
    integer::index2 = 1
    integer, intent(in)::oCounter
    integer, intent(in)::eCounter

    integer, dimension(20), intent(out)::tempO
    integer, dimension(20), intent(out)::tempE

    do index = 1,20,1
        tempE(index) = -999
        tempO(index) = -999
    end do

    do index = 1,20,1
        if(oArray(index) /= -999) then
            tempO(index2) = oArray(index)
            index2 = index2 + 1
        end if
    end do

    index2 = 1

    do index = 1,20,1
        if(eArray(index) /= -999) then
            tempE(index2) = eArray(index)
            index2 = index2 + 1
        end if
    end do

    if(oCounter >= eCounter) then
        n = eCounter
    else
        n = oCounter
    end if

    do index = 1,n,1
        !xArray(index) = (real(tempE(n-index)) + real(tempO(index))) / real(tempE(index))
        if(index == n) then
            xArray(index) = (real(tempE(index)) + real(tempO(index))) / real(tempE(index))
            xArray(index) = xArray(index) - 1
        else
            xArray(index) = (real(tempE(n-index)) + real(tempO(index))) / real(tempE(index))
        end if
    end do
end subroutine
