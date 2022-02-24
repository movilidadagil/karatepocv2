package datas;

import com.intuit.karate.junit5.Karate;

public class DataRunner {
    @Karate.Test
    Karate testData() {
        return Karate.run("data-get").relativeTo(getClass());
    }
}
