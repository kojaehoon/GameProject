package dto;

public class RanksDTO {
	private int seq;
	private int timer;
	private int play_date;
	public RanksDTO(int seq, int timer, int play_date) {
		super();
		this.seq = seq;
		this.timer = timer;
		this.play_date = play_date;
	}
	public RanksDTO() {
		super();
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getTimer() {
		return timer;
	}
	public void setTimer(int timer) {
		this.timer = timer;
	}
	public int getPlay_date() {
		return play_date;
	}
	public void setPlay_date(int play_date) {
		this.play_date = play_date;
	}
	
	
}
