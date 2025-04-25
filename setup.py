from setuptools import setup, find_packages

setup(
    name='bank_transaction_journal',
    version='0.0.1',
    description='Custom ERPNext app for auto-creating Journal Entries from Bank Transactions',
    author='Talha Ahmad',
    author_email='realtalhaa@gmail.com',
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    install_requires=['frappe']
)
