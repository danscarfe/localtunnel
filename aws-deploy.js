const execSync = require("child_process").execSync;

const env_name = "localtunnel-prod";
const build_num = Math.round(new Date().getTime() / 1000);
const label = `${env_name}-build-${build_num}`;

const opts = {
  stdio: "inherit",
  shell: true,
};

execSync(`eb deploy ${env_name} --label ${label} --profile=hobots`, opts);
