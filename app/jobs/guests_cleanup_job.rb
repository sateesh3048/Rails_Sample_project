class GuestsCleanupJob < ApplicationJob
  queue_as :urgent

  before_enqueue :test_before_enqueue
  before_perform :test_before_perform

  def perform(*args)
    # Do something later
    p "AAAAAAAAAAAAA performperformperform"
  end


  def test_before_enqueue
    p "************ test_before_enqueuetest_before_enqueuetest_before_enqueue"
  end

  def test_before_perform
     p ">>>>>>>>>>>>>>>>>>>> test_before_performtest_before_performtest_before_perform"
  end

end
