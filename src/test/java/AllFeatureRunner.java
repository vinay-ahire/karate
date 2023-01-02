import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.Assert.*;
import org.junit.Test;

/**
 * Runs all features files present in src/test/java with the tags (or groups) @POST or @GET.
 */
public class AllFeatureRunner {

    @Test
    public void testParallel() {
        Results results = Runner.path("file:src/test/java").tags("@POST,@GET").parallel(1);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }

}
