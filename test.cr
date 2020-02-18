@[Link("mseed")]
lib Libmseed
    fun ms_timestr2nstime(timestr : LibC::Char*) : Int64
end

timestr = "2010,058,06:50:00.069539"
nstime = Libmseed.ms_timestr2nstime(timestr)
puts(nstime)
