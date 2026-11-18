.class public final Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "HomeSecurityAnswerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog;->b0(Lcom/opay/team/newhome/reward/SecurityFeel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "com/opay/team/newhome/home/HomeSecurityAnswerDialog$a",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "",
        "position",
        "getSpanSize",
        "(I)I",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/opay/team/newhome/reward/SecurityFeel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/reward/SecurityFeel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$a;->a:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$a;->a:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x6

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityQuestion;->g()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$a;->a:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityQuestion;->d()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/opay/team/newhome/home/HomeSecurityAnswerDialog$a;->a:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityQuestion;->e()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v2, 0x1

    .line 58
    :goto_1
    const/4 v3, 0x4

    .line 59
    if-eq v2, v0, :cond_5

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    if-eq v2, v0, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    if-ge p1, v3, :cond_4

    .line 66
    .line 67
    div-int/2addr v1, p1

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    const/4 v1, 0x2

    .line 70
    goto :goto_2

    .line 71
    :cond_5
    if-ge p1, v3, :cond_6

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_6
    const/4 v1, 0x3

    .line 75
    :goto_2
    return v1
.end method
