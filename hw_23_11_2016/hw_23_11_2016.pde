String file[];
int average;
int nums[] = new int[10];
void setup() {
  size(400, 400);
  file = loadStrings("data.txt");
  for (int i=0; i<file.length; i++) {
   average += int(file[i]);
   nums[i] = int(file[i]);
  }
  average /= 10;
  textSize(60);
  text(average+" kph", width/2-100, height/2-30);
}

void draw() {
   for (int i=0; i<nums.length; i++) {
  fill(100+nums[i],nums[i],nums[i]);
  rect(i*40, height-nums[i], 40, nums[i]);
  }
}