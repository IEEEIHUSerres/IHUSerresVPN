#!/bin/bash

ip ro add 0.0.0.0/1 via ${route_vpn_gateway}
