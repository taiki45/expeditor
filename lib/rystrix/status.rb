module Rystrix
  class Status
    attr_accessor :success
    attr_accessor :failure
    attr_accessor :rejection
    attr_accessor :timeout

    def initialize
      set(0, 0, 0, 0)
    end

    def increment(type)
      case type
      when :success
        @success += 1
      when :failure
        @failure += 1
      when :rejection
        @rejection += 1
      when :timeout
        @timeout += 1
      else
      end
    end

    def reset
      set(0, 0, 0, 0)
    end

    private

    def set(s, f, r, t)
      @success = s
      @failure = f
      @rejection = r
      @timeout = t
    end
  end
end
