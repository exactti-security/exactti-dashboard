# Clone the Exact-Ti security plugin
source /usr/local/lib/wazuh/run-with-retry.sh

cd /home/node/app/plugins
run_with_retry git clone --depth 1 --branch ${WAZUH_DASHBOARD_REPORTING_BRANCH} https://github.com/wazuh/exactti-dashboard-reporting.git
cd exactti-dashboard-reporting
run_with_retry yarn install
echo "Building Exact-Ti reporting plugin"
run_with_retry yarn build
echo "Copying Exact-Ti reporting plugin"
mkdir /home/node/packages/exactti-dashboard-reporting
cp -r build/* /home/node/packages/exactti-dashboard-reporting
