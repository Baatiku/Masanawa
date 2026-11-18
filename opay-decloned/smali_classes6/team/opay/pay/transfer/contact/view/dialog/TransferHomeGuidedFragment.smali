.class public final Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;
.super Lteam/opay/core/base/BaseFullDialogFragmentV2;
.source "TransferHomeGuidedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFullDialogFragmentV2<",
        "Loi6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008 \n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 82\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00019B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00138\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00138\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0015R\u0014\u0010\u001c\u001a\u00020\u00138\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0015R\u0014\u0010\u001e\u001a\u00020\u00138\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0015R\u0016\u0010!\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010#\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 R\u0016\u0010%\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010 R\u0016\u0010\'\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010 R\u0016\u0010)\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010 R\u0014\u0010+\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008*\u0010 R\u0014\u0010-\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008,\u0010 R\u0014\u0010/\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008.\u0010 R\u0014\u00101\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00080\u0010 R\u0016\u00103\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010 R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106\u00a8\u0006:"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;",
        "Lteam/opay/core/base/BaseFullDialogFragmentV2;",
        "Loi6;",
        "<init>",
        "()V",
        "",
        "onStart",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "dismiss",
        "onDestroyView",
        "",
        "height",
        "U",
        "(I)V",
        "",
        "m",
        "Ljava/lang/String;",
        "SEARCH_HEIGHT",
        "n",
        "USER_HEIGHT",
        "o",
        "BANNER_HEIGHT",
        "p",
        "CONTACT_HEIGHT",
        "q",
        "CONTACT_SPACE",
        "r",
        "I",
        "searchHeight",
        "s",
        "userHeight",
        "t",
        "bannerhHeight",
        "u",
        "contacthHeight",
        "v",
        "contactSpace",
        "w",
        "SEARCH_TYPE",
        "x",
        "USER_TYPE",
        "y",
        "BANNER_TYPE",
        "z",
        "CONTACT_TYPE",
        "A",
        "current",
        "",
        "B",
        "Z",
        "clickSkip",
        "C",
        "Companion",
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


# static fields
.field public static final C:Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:Z

.field public final m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->C:Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment$1;->INSTANCE:Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFullDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "search_height"

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->m:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "user_height"

    .line 11
    .line 12
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->n:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "banner_height"

    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->o:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "contact_height"

    .line 19
    .line 20
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->p:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "contact_space"

    .line 23
    .line 24
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->q:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->x:I

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->y:I

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    iput v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->z:I

    .line 34
    .line 35
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->w:I

    .line 36
    .line 37
    iput v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->A:I

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic R(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->W(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->V(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->X(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->A:I

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->w:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lx7b;->a:Lx7b;

    .line 9
    .line 10
    const-string v1, "new_aa_guid1_next_click"

    .line 11
    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->x:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Lx7b;->a:Lx7b;

    .line 23
    .line 24
    const-string v1, "new_aa_guid2_next_click"

    .line 25
    .line 26
    new-array v2, v2, [Lkotlin/Pair;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->y:I

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    sget-object v0, Lx7b;->a:Lx7b;

    .line 37
    .line 38
    const-string v1, "new_aa_guid3_okay_click"

    .line 39
    .line 40
    new-array v2, v2, [Lkotlin/Pair;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->z:I

    .line 47
    .line 48
    if-ne v0, v1, :cond_3

    .line 49
    .line 50
    sget-object v0, Lx7b;->a:Lx7b;

    .line 51
    .line 52
    const-string v1, "new_aa_contacts_guid_okay_click"

    .line 53
    .line 54
    new-array v2, v2, [Lkotlin/Pair;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->A:I

    .line 60
    .line 61
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->w:I

    .line 62
    .line 63
    if-ne v0, v1, :cond_4

    .line 64
    .line 65
    iget v2, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->s:I

    .line 66
    .line 67
    if-lez v2, :cond_4

    .line 68
    .line 69
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->x:I

    .line 70
    .line 71
    iput v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->A:I

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->U(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    if-eq v0, v1, :cond_5

    .line 78
    .line 79
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->x:I

    .line 80
    .line 81
    if-ne v0, v1, :cond_6

    .line 82
    .line 83
    :cond_5
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->t:I

    .line 84
    .line 85
    if-ltz v0, :cond_6

    .line 86
    .line 87
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->y:I

    .line 88
    .line 89
    iput v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->A:I

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->U(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->B:Z

    .line 97
    .line 98
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->dismiss()V

    .line 99
    .line 100
    .line 101
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->B:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->dismiss()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->A:I

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->w:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lx7b;->a:Lx7b;

    .line 9
    .line 10
    const-string v1, "new_aa_guid1_skip_click"

    .line 11
    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->x:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Lx7b;->a:Lx7b;

    .line 23
    .line 24
    const-string v1, "new_aa_guid2_skip_click"

    .line 25
    .line 26
    new-array v2, v2, [Lkotlin/Pair;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->B:Z

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->dismiss()V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method


# virtual methods
.method public final U(I)V
    .locals 8

    .line 1
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    .line 3
    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Loi6;

    .line 11
    .line 12
    invoke-virtual {v0}, Loi6;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->A:I

    .line 20
    .line 21
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->w:I

    .line 22
    .line 23
    const/16 v2, 0x38

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    sget v0, Lteam/opay/pay/R$id;->iv_close:I

    .line 30
    .line 31
    invoke-virtual {v6, v0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->d0(II)V

    .line 32
    .line 33
    .line 34
    sget v0, Lteam/opay/pay/R$id;->iv_guide:I

    .line 35
    .line 36
    invoke-static {v2}, Ljmf;->d(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr p1, v1

    .line 41
    invoke-virtual {v6, v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->a0(III)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lx7b;->a:Lx7b;

    .line 45
    .line 46
    const-string v0, "new_aa_guid1_show"

    .line 47
    .line 48
    new-array v1, v4, [Lkotlin/Pair;

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_0
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->x:I

    .line 56
    .line 57
    if-ne v0, v1, :cond_1

    .line 58
    .line 59
    sget v0, Lteam/opay/pay/R$id;->iv_close:I

    .line 60
    .line 61
    invoke-virtual {v6, v0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->d0(II)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lx7b;->a:Lx7b;

    .line 65
    .line 66
    const-string v1, "new_aa_guid2_show"

    .line 67
    .line 68
    new-array v4, v4, [Lkotlin/Pair;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Loi6;

    .line 78
    .line 79
    iget-object v0, v0, Loi6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 80
    .line 81
    sget v1, Lteam/opay/pay/R$mipmap;->aa_home_recipient_guide_ic:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 84
    .line 85
    .line 86
    sget v0, Lteam/opay/pay/R$id;->iv_guide:I

    .line 87
    .line 88
    invoke-static {v2}, Ljmf;->d(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr p1, v1

    .line 93
    invoke-virtual {v6, v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->a0(III)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Loi6;

    .line 101
    .line 102
    iget-object p1, p1, Loi6;->e:Landroid/widget/TextView;

    .line 103
    .line 104
    sget v0, Lteam/opay/pay/R$string;->osdk_transfer_beneficiaries_guide_hint:I

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_1
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->y:I

    .line 116
    .line 117
    const/16 v5, 0x8

    .line 118
    .line 119
    if-ne v0, v1, :cond_3

    .line 120
    .line 121
    sget v0, Lteam/opay/pay/R$id;->iv_close:I

    .line 122
    .line 123
    invoke-virtual {v6, v0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->d0(II)V

    .line 124
    .line 125
    .line 126
    sget-object v0, Lx7b;->a:Lx7b;

    .line 127
    .line 128
    const-string v1, "new_aa_guid3_show"

    .line 129
    .line 130
    new-array v7, v4, [Lkotlin/Pair;

    .line 131
    .line 132
    invoke-virtual {v0, v1, v7}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 133
    .line 134
    .line 135
    sget v0, Lteam/opay/pay/R$id;->tv_next:I

    .line 136
    .line 137
    invoke-virtual {v6, v0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->d0(II)V

    .line 138
    .line 139
    .line 140
    sget v0, Lteam/opay/pay/R$id;->tv_hint_top:I

    .line 141
    .line 142
    invoke-virtual {v6, v0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->d0(II)V

    .line 143
    .line 144
    .line 145
    sget v0, Lteam/opay/pay/R$id;->tv_okay:I

    .line 146
    .line 147
    invoke-virtual {v6, v0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->d0(II)V

    .line 148
    .line 149
    .line 150
    sget v0, Lteam/opay/pay/R$id;->tv_hint_banner:I

    .line 151
    .line 152
    invoke-virtual {v6, v0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->d0(II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Loi6;

    .line 160
    .line 161
    iget-object v0, v0, Loi6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 162
    .line 163
    sget v1, Lteam/opay/pay/R$mipmap;->aa_home_banner_guide_ic:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 166
    .line 167
    .line 168
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->t:I

    .line 169
    .line 170
    if-nez v0, :cond_2

    .line 171
    .line 172
    sget v1, Lteam/opay/pay/R$id;->iv_guide:I

    .line 173
    .line 174
    invoke-virtual {v6, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->o(II)V

    .line 175
    .line 176
    .line 177
    const/16 p1, 0x32

    .line 178
    .line 179
    invoke-static {p1}, Ljmf;->d(I)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    const/4 v2, 0x4

    .line 184
    const/4 v3, 0x0

    .line 185
    const/4 v4, 0x4

    .line 186
    move-object v0, v6

    .line 187
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_2
    sget v0, Lteam/opay/pay/R$id;->iv_guide:I

    .line 192
    .line 193
    invoke-static {v2}, Ljmf;->d(I)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    add-int/2addr p1, v1

    .line 198
    invoke-virtual {v6, v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->a0(III)V

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_3
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->z:I

    .line 203
    .line 204
    if-ne v0, v1, :cond_4

    .line 205
    .line 206
    sget v0, Lteam/opay/pay/R$id;->iv_close:I

    .line 207
    .line 208
    invoke-virtual {v6, v0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->d0(II)V

    .line 209
    .line 210
    .line 211
    sget v0, Lteam/opay/pay/R$id;->iv_guide:I

    .line 212
    .line 213
    invoke-static {v2}, Ljmf;->d(I)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    add-int/2addr p1, v1

    .line 218
    invoke-virtual {v6, v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->a0(III)V

    .line 219
    .line 220
    .line 221
    sget-object p1, Lx7b;->a:Lx7b;

    .line 222
    .line 223
    const-string v0, "new_aa_contacts_guid_show"

    .line 224
    .line 225
    new-array v1, v4, [Lkotlin/Pair;

    .line 226
    .line 227
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Loi6;

    .line 235
    .line 236
    iget-object p1, p1, Loi6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 237
    .line 238
    sget v0, Lteam/opay/pay/R$mipmap;->aa_home_contact_guide_ic:I

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    check-cast p1, Loi6;

    .line 248
    .line 249
    iget-object p1, p1, Loi6;->e:Landroid/widget/TextView;

    .line 250
    .line 251
    sget v0, Lteam/opay/pay/R$string;->osdk_transfer_contact_guide_hint:I

    .line 252
    .line 253
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    check-cast p1, Loi6;

    .line 265
    .line 266
    iget-object p1, p1, Loi6;->f:Landroid/widget/TextView;

    .line 267
    .line 268
    sget v0, Lteam/opay/pay/R$string;->osdk_okay:I

    .line 269
    .line 270
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    check-cast p1, Loi6;

    .line 282
    .line 283
    invoke-virtual {p1}, Loi6;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {v6, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 288
    .line 289
    .line 290
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/pay/transfer/contact/view/dialog/AATransferDismissEvent;

    .line 6
    .line 7
    invoke-direct {v1}, Lteam/opay/pay/transfer/contact/view/dialog/AATransferDismissEvent;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->B:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->A:I

    .line 6
    .line 7
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->w:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lx7b;->a:Lx7b;

    .line 13
    .line 14
    const-string v1, "new_aa_guid1_skip_click"

    .line 15
    .line 16
    new-array v2, v2, [Lkotlin/Pair;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->x:I

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    sget-object v0, Lx7b;->a:Lx7b;

    .line 27
    .line 28
    const-string v1, "new_aa_guid2_skip_click"

    .line 29
    .line 30
    new-array v2, v2, [Lkotlin/Pair;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->y:I

    .line 37
    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    sget-object v0, Lx7b;->a:Lx7b;

    .line 41
    .line 42
    const-string v1, "new_aa_guid3_okay_click"

    .line 43
    .line 44
    new-array v2, v2, [Lkotlin/Pair;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->z:I

    .line 51
    .line 52
    if-ne v0, v1, :cond_3

    .line 53
    .line 54
    sget-object v0, Lx7b;->a:Lx7b;

    .line 55
    .line 56
    const-string v1, "new_aa_contacts_guid_okay_click"

    .line 57
    .line 58
    new-array v2, v2, [Lkotlin/Pair;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    invoke-super {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->onDestroyView()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lteam/opay/core/base/BaseDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseFullDialogFragmentV2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x0

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->m:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    :goto_0
    iput p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->r:I

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->n:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 p1, 0x0

    .line 56
    :goto_1
    iput p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->s:I

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->o:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    const/4 p1, 0x0

    .line 72
    :goto_2
    iput p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->t:I

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->p:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    const/4 p1, 0x0

    .line 88
    :goto_3
    iput p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->u:I

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    iget-object p2, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->q:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    :cond_5
    iput p2, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->v:I

    .line 103
    .line 104
    iget p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->u:I

    .line 105
    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    iget p2, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->z:I

    .line 109
    .line 110
    iput p2, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->A:I

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->U(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    iget p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->w:I

    .line 117
    .line 118
    iput p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->A:I

    .line 119
    .line 120
    iget p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->r:I

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;->U(I)V

    .line 123
    .line 124
    .line 125
    :goto_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Loi6;

    .line 130
    .line 131
    iget-object p1, p1, Loi6;->f:Landroid/widget/TextView;

    .line 132
    .line 133
    const-string p2, "tvNext"

    .line 134
    .line 135
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance p2, Lz6f;

    .line 139
    .line 140
    invoke-direct {p2, p0}, Lz6f;-><init>(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Loi6;

    .line 151
    .line 152
    iget-object p1, p1, Loi6;->d:Landroid/widget/TextView;

    .line 153
    .line 154
    const-string p2, "tvHintBanner"

    .line 155
    .line 156
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance p2, La7f;

    .line 160
    .line 161
    invoke-direct {p2, p0}, La7f;-><init>(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Loi6;

    .line 172
    .line 173
    iget-object p1, p1, Loi6;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 174
    .line 175
    const-string p2, "ivClose"

    .line 176
    .line 177
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance p2, Lb7f;

    .line 181
    .line 182
    invoke-direct {p2, p0}, Lb7f;-><init>(Lteam/opay/pay/transfer/contact/view/dialog/TransferHomeGuidedFragment;)V

    .line 183
    .line 184
    .line 185
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method
