package deviceJobManager;

import grabData.*;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;

import static org.quartz.JobBuilder.newJob;
import static org.quartz.JobKey.jobKey;
import static org.quartz.SimpleScheduleBuilder.simpleSchedule;
import static org.quartz.TriggerBuilder.newTrigger;
import static org.quartz.TriggerKey.triggerKey;

public class JobManager {
    private static Scheduler scheduler = null;

    //add job
    public static void addJob(String jobType, int timeSize, int interval) {
        jobType = jobType.toUpperCase();  //to uppercase
        Trigger trigger = null;
        JobDetail job = null;
        try {
            trigger = newTrigger()
                    .withIdentity("trigger" + jobType,
                            "triggerGroup" + jobType)
                    .startNow()
                    .withPriority(getPriorityByJobType(jobType))
                    .withSchedule(simpleSchedule().withIntervalInSeconds(timeConvert(timeSize, interval))
                            .repeatForever())
                    .build();
            job = newJobByJobType(jobType);
            scheduler.scheduleJob(job, trigger);
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
    }

    //update job
    public static void updateJob(String jobType, int timeSize, int interval) {
        jobType = jobType.toUpperCase();  //to uppercase
        Trigger oldTrigger = null;
        try {
            oldTrigger = scheduler.getTrigger(triggerKey("trigger" + jobType, "triggerGroup" + jobType));
            Trigger newtrigger = newTrigger()
                    .withIdentity("trigger" + jobType,
                            "triggerGroup" + jobType)
                    .startNow()
                    .withPriority(getPriorityByJobType(jobType))
                    .withSchedule(simpleSchedule().withIntervalInSeconds(timeConvert(timeSize, interval))
                            .repeatForever())
                    .build();

            scheduler.rescheduleJob(oldTrigger.getKey(), newtrigger);
        } catch (SchedulerException e) {
            e.printStackTrace();
        }


    }

    //remove job
    public static void removeJob(String jobType) {
        jobType = jobType.toUpperCase();  //to uppercase
        try {
            scheduler.deleteJob(jobKey("job" + jobType, "jobGroup" + jobType));
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
    }

    //convert hour, minute to second
    public static int timeConvert(int timeSize, int interval) {
        switch (timeSize) {
            case 1:
                interval = interval * 3600;
                break;
            case 2:
                interval = interval * 60;
                break;
            default:
                ;
        }
        return interval;
    }

    public static int getPriorityByJobType(String jobType) {
        jobType = jobType.toUpperCase();  //to uppercase
        int priority = 0;
        switch (jobType) {
            case "A":
                priority = 10;
                break;
            case "B":
                priority = 9;
                break;
            case "C":
                priority = 8;
                break;
            case "D":
                priority = 7;
                break;
            case "E":
                priority = 6;
                break;
            case "F":
                priority = 5;
                break;
            case "G":
                priority = 4;
                break;
            case "H":
                priority = 3;
                break;
            case "I":
                priority = 2;
                break;
            case "J":
                priority = 1;
                break;
            default:
                ;
        }
        return priority;
    }

    public static JobDetail newJobByJobType(String jobType) {
        jobType = jobType.toUpperCase();  //to uppercase
        JobDetail job = null;
        switch (jobType) {
            case "A":
                job = newJob(DataOnlineSaveJob.class).withIdentity("job" + jobType, "jobGroup" + jobType).build();
                break;
            case "B":
                job = newJob(DataOtherJob.class).withIdentity("job" + jobType, "jobGroup" + jobType).build();
                break;
            case "C":
                job = newJob(TemperatureSaveJob.class).withIdentity("job" + jobType, "jobGroup" + jobType).build();
                break;
            case "D":
                job = newJob(TransientRequestJob.class).withIdentity("job" + jobType, "jobGroup" + jobType).build();
                break;
            case "E":
                job = newJob(OverLimitRequestJob.class).withIdentity("job" + jobType, "jobGroup" + jobType).build();
                break;
            case "F":
                job = newJob(CtrlSaveJob.class).withIdentity("job" + jobType, "jobGroup" + jobType).build();
                break;
            case "G":
                job = newJob(AlarmModelJob.class).withIdentity("job" + jobType, "jobGroup" + jobType).build();
                break;
            case "H":
                job = newJob(assessModelJob.class).withIdentity("job" + jobType, "jobGroup" + jobType).build();
                break;
            case "I":
                job = newJob(ThresholdSaveJob.class).withIdentity("job" + jobType, "jobGroup" + jobType).build();
                break;
            case "J":
                job = newJob(uploadDataToCenterSvrJob.class).withIdentity("job" + jobType, "jobGroup" + jobType).build();
                break;
            default:
                ;
        }
        return job;
    }

    public static Scheduler getScheduler() {
        return scheduler;
    }

    public static void setScheduler(Scheduler scheduler) {
        JobManager.scheduler = scheduler;
    }
}
