from behave import given, when, then
from main import subtract


@given('I have numbers {a:d} and {b:d}')
def step_given_numbers(context, a, b):
    context.a = a
    context.b = b


@when('I subtract them')
def step_when_subtract(context):
    context.result = subtract(context.a, context.b)


@then('the result should be {expected:d}')
def step_then_result(context, expected):
    assert context.result == expected
