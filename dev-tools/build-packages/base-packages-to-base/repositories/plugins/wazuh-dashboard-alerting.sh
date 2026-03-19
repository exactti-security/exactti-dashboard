# Clone the Exact-Ti Security Analytics plugin
source /usr/local/lib/wazuh/run-with-retry.sh

cd /home/node/app/plugins
run_with_retry git clone --depth 1 --branch ${WAZUH_DASHBOARD_ALERTING_BRANCH} https://github.com/wazuh/exactti-dashboard-alerting.git
cd exactti-dashboard-alerting
run_with_retry yarn install
echo "Building Exact-Ti Alerting plugin"
run_with_retry yarn build
echo "Copying Exact-Ti Alerting plugin"
mkdir /home/node/packages/exactti-dashboard-alerting
cp -r build/* /home/node/packages/exactti-dashboard-alerting
