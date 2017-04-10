/**
 * This is just a dummy example of a junit test
 * that could as well be linked and used as a Spec File.
 */
class SpecCouldAlsoBeJUnitFile {

    /**
     * This is just dummy pseudo code.
     * It will probably not compile or run, but this is not important for this example.
     */
    @Test
    public void scenario_with_steps() {
        String s1 = "Hello";
        String s2 = "World";
        String outcome = performAction(s1, s2);
        recordStepInScenario("performAction(" + s1 + ", " + s2 + ") ==> " + outcome);
        assertEquals("hallo scenarioo", outcome);
    }

}