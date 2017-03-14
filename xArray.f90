subroutine x(xArray,oArray,eArray,oCounter,eCounter,n)
    implicit none
    integer, intent(out)::n
    integer, dimension(20), intent(in)::oArray
    integer, dimension(20), intent(in)::eArray
    integer, dimension(20), intent(out)::xArray
    integer::index = 1
    integer, intent(in)::oCounter
    integer, intent(in)::eCounter

    if(oCounter >= eCounter) then
        n = eCounter
    else
        n = oCounter
    end if
    do index = 1,n,1
        xArray(index) = (eArray(n-index) + oArray(index)) / eArray(index)
    end do
end subroutine
