.class public final synthetic Lteam/opay/opb/common/base/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhka;


# instance fields
.field public final synthetic a:Lteam/opay/opb/common/base/Insets;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lteam/opay/opb/common/base/Insets;ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/opb/common/base/a;->a:Lteam/opay/opb/common/base/Insets;

    .line 5
    .line 6
    iput-boolean p2, p0, Lteam/opay/opb/common/base/a;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lteam/opay/opb/common/base/a;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lteam/opay/opb/common/base/a;->d:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lteam/opay/opb/common/base/a;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/opb/common/base/a;->a:Lteam/opay/opb/common/base/Insets;

    .line 2
    .line 3
    iget-boolean v1, p0, Lteam/opay/opb/common/base/a;->b:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lteam/opay/opb/common/base/a;->c:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lteam/opay/opb/common/base/a;->d:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lteam/opay/opb/common/base/a;->e:Z

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-static/range {v0 .. v6}, Lteam/opay/opb/common/base/b;->a(Lteam/opay/opb/common/base/Insets;ZZZZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
