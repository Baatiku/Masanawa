.class public final Lteam/opay/face/dialog/OFaceRequeryFragment;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "OFaceRequeryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lfga;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J!\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/face/dialog/OFaceRequeryFragment;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lfga;",
        "<init>",
        "()V",
        "",
        "onStart",
        "onStop",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "j",
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
.field public static final j:Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static k:Z

.field public static final l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/face/dialog/OFaceRequeryFragment;->j:Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;

    .line 8
    .line 9
    const-class v0, Lteam/opay/face/dialog/OFaceRequeryFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getSimpleName(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lteam/opay/face/dialog/OFaceRequeryFragment;->l:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/face/dialog/OFaceRequeryFragment$1;->INSTANCE:Lteam/opay/face/dialog/OFaceRequeryFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic M(Lteam/opay/face/dialog/OFaceRequeryFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/face/dialog/OFaceRequeryFragment;->Q(Lteam/opay/face/dialog/OFaceRequeryFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N(Lteam/opay/face/dialog/OFaceRequeryFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/face/dialog/OFaceRequeryFragment;->R(Lteam/opay/face/dialog/OFaceRequeryFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic O()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/face/dialog/OFaceRequeryFragment;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic P()Z
    .locals 1

    .line 1
    sget-boolean v0, Lteam/opay/face/dialog/OFaceRequeryFragment;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final Q(Lteam/opay/face/dialog/OFaceRequeryFragment;Landroid/view/View;)V
    .locals 11

    .line 1
    sget-object p1, Lps;->a:Lps;

    .line 2
    .line 3
    sget-object v0, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/face/FaceCameraData;->j()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "trace_id"

    .line 14
    .line 15
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "click_name"

    .line 20
    .line 21
    const-string v3, "query_again"

    .line 22
    .line 23
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lteam/opay/face/FaceCameraData;->b()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "call_code"

    .line 36
    .line 37
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lteam/opay/face/FaceCameraData;->g()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v4, "kycLevel"

    .line 50
    .line 51
    invoke-static {v4, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v4, 0x4

    .line 56
    new-array v4, v4, [Lkotlin/Pair;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    aput-object v1, v4, v5

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    aput-object v2, v4, v1

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    aput-object v3, v4, v1

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    aput-object v0, v4, v1

    .line 69
    .line 70
    const-string v0, "oface_query_again_click"

    .line 71
    .line 72
    invoke-virtual {p1, v0, v4}, Lps;->a(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 73
    .line 74
    .line 75
    sget-object v5, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 76
    .line 77
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 78
    .line 79
    const/4 v9, 0x4

    .line 80
    const/4 v10, 0x0

    .line 81
    const-string v6, "ws_kyc_requery_key"

    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    invoke-static/range {v5 .. v10}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static final R(Lteam/opay/face/dialog/OFaceRequeryFragment;Landroid/view/View;)V
    .locals 11

    .line 1
    sget-object p1, Lps;->a:Lps;

    .line 2
    .line 3
    sget-object v0, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/face/FaceCameraData;->j()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "trace_id"

    .line 14
    .line 15
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "click_name"

    .line 20
    .line 21
    const-string v3, "cancel_button"

    .line 22
    .line 23
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lteam/opay/face/FaceCameraData;->b()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "call_code"

    .line 36
    .line 37
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lteam/opay/face/FaceCameraData;->g()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v4, "kycLevel"

    .line 50
    .line 51
    invoke-static {v4, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v4, 0x4

    .line 56
    new-array v4, v4, [Lkotlin/Pair;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    aput-object v1, v4, v5

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    aput-object v2, v4, v1

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    aput-object v3, v4, v1

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    aput-object v0, v4, v1

    .line 69
    .line 70
    const-string v0, "oface_requery_cancel_button_click"

    .line 71
    .line 72
    invoke-virtual {p1, v0, v4}, Lps;->a(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 73
    .line 74
    .line 75
    sget-object v5, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 76
    .line 77
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 78
    .line 79
    const/4 v9, 0x4

    .line 80
    const/4 v10, 0x0

    .line 81
    const-string v6, "ws_kyc_requery_key"

    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    invoke-static/range {v5 .. v10}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 88
    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/base/BaseDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lteam/opay/face/dialog/OFaceRequeryFragment;->k:Z

    .line 6
    .line 7
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/base/BaseDialogFragment;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lteam/opay/face/dialog/OFaceRequeryFragment;->k:Z

    .line 6
    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lfga;

    .line 16
    .line 17
    iget-object p1, p1, Lfga;->e:Landroid/widget/TextView;

    .line 18
    .line 19
    new-instance p2, Le6a;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Le6a;-><init>(Lteam/opay/face/dialog/OFaceRequeryFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lfga;

    .line 32
    .line 33
    iget-object p1, p1, Lfga;->b:Landroid/widget/TextView;

    .line 34
    .line 35
    new-instance p2, Lf6a;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Lf6a;-><init>(Lteam/opay/face/dialog/OFaceRequeryFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lps;->a:Lps;

    .line 44
    .line 45
    sget-object p2, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 46
    .line 47
    invoke-virtual {p2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lteam/opay/face/FaceCameraData;->j()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "trace_id"

    .line 56
    .line 57
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lteam/opay/face/FaceCameraData;->b()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "call_code"

    .line 70
    .line 71
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p2}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2}, Lteam/opay/face/FaceCameraData;->g()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const-string v2, "kycLevel"

    .line 84
    .line 85
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const/4 v2, 0x3

    .line 90
    new-array v2, v2, [Lkotlin/Pair;

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    aput-object v0, v2, v3

    .line 94
    .line 95
    const/4 v0, 0x1

    .line 96
    aput-object v1, v2, v0

    .line 97
    .line 98
    const/4 v0, 0x2

    .line 99
    aput-object p2, v2, v0

    .line 100
    .line 101
    const-string p2, "page_oface_requery_show"

    .line 102
    .line 103
    invoke-virtual {p1, p2, v2}, Lps;->a(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
