@[Link("mseed")]
lib Libmseed
    enum Ms_timeformat_t
      ISOMONTHDAY
      ISOMONTHDAY_SPACE
      SEEDORDINAL
      UNIXEPOCH
      NANOSECONDEPOCH
    end

    enum Ms_subseconds_t
      NONE
      MICRO
      NANO
      MICRO_NONE
      NANO_NONE
      NANO_MICRO
      NANO_MICRO_NONE
    end

    fun ms_timestr2nstime(timestr : LibC::Char*) : Int64
    fun ms_nstime2timestr(nstime : Int64, timestr : LibC::Char*, timeformat : Ms_timeformat_t, subseconds : Ms_subseconds_t) : LibC::Char*
end

timestr = "2010,058,06:50:00.069539"
puts(timestr)
nstime = Libmseed.ms_timestr2nstime(timestr)
puts(nstime)

output = String.build(capacity = 30) do |str|
    30.times do
        str << 1
    end
end
temp = Libmseed.ms_nstime2timestr(nstime, output, Libmseed::Ms_timeformat_t::ISOMONTHDAY, Libmseed::Ms_subseconds_t::NANO)
puts(output)
