"""Safeguard the owner pricing capabilities in the private Droplet grant helper.

No credentials, user records or runtime files are imported by this test.
"""
import ast
from pathlib import Path
import unittest


class OwnerBillingGrantTest(unittest.TestCase):
    def test_owner_grant_provisions_billing_read_and_write(self):
        path = Path(__file__).with_name("grant-owner-admin.py")
        module = ast.parse(path.read_text(encoding="utf-8"))
        assignments = [
            node for node in module.body
            if isinstance(node, ast.Assign)
            and any(isinstance(target, ast.Name) and target.id == "capabilities"
                    for target in node.targets)
        ]
        self.assertEqual(len(assignments), 1)
        capabilities = ast.literal_eval(assignments[0].value)
        self.assertIn("billing.read", capabilities)
        self.assertIn("billing.write", capabilities)
        self.assertIn("dashboard.read", capabilities)
        self.assertIn("roles.write", capabilities)
        self.assertEqual(len(capabilities), len(set(capabilities)))
        self.assertLessEqual(len(capabilities), 40)


if __name__ == "__main__":
    unittest.main()
