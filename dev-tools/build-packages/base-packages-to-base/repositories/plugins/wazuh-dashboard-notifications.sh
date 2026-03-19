# Clone the Exact-Ti Security Analytics plugin
source /usr/local/lib/wazuh/run-with-retry.sh

cd /home/node/app/plugins
run_with_retry git clone --depth 1 --branch ${WAZUH_DASHBOARD_NOTIFICATIONS_BRANCH} https://github.com/wazuh/exactti-dashboard-notifications.git
cd exactti-dashboard-notifications
run_with_retry yarn install
echo "Building Exact-Ti Notifications plugin"
run_with_retry yarn build
echo "Copying Exact-Ti Notifications plugin"
mkdir /home/node/packages/exactti-dashboard-notifications
cp -r build/* /home/node/packages/exactti-dashboard-notifications
