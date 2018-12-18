set clock_constraint { \
    name clk \
    module GenerationGenerator::GenerationGenerator \
    port ap_clk \
    period 20 \
    uncertainty 2.5 \
}

set MultiClock_number 1

set MultiClock_constraint {  clk 20 }

set all_path {}

set false_path {}

