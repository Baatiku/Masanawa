.class public final Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;
.super Lteam/opay/pay/kyc/upgrade2/Hilt_KycUpgrade2Activity;
.source "KycUpgrade2Activity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001c2\u00020\u00012\u00020\u0002:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J!\u0010\u0010\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u0017\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;",
        "Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;",
        "",
        "<init>",
        "()V",
        "",
        "t0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "f0",
        "",
        "kycLevel",
        "",
        "sonsultSuccess",
        "o0",
        "(Ljava/lang/String;Z)V",
        "Lteam/opay/pay/kyc/base/ResultEvent;",
        "event",
        "onEvent",
        "(Lteam/opay/pay/kyc/base/ResultEvent;)V",
        "onDestroy",
        "j0",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "kycNodeData",
        "v0",
        "(Lteam/opay/pay/kyc/base/KycNodeData;)Z",
        "h",
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
.field public static final h:Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;->h:Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/Hilt_KycUpgrade2Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s0(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;->u0(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final t0()V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$a;-><init>(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "close_kyc_upgrade2_page"

    .line 9
    .line 10
    invoke-virtual {v0, p0, v2, v1}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->Y()Lteam/opay/pay/util/SingleLiveEvent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lt78;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lt78;-><init>(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$b;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static final u0(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->l:Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$Companion;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$Companion;->a(Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;)Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 13
    .line 14
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public f0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "show_success"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "false"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    xor-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->S0(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const-string v1, "serial_id"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->y0(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "source"

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v1, 0x0

    .line 87
    :goto_0
    const-string v3, ""

    .line 88
    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    move-object v1, v3

    .line 92
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-nez v1, :cond_4

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    move-object v3, v1

    .line 110
    :goto_1
    move-object v1, v3

    .line 111
    :cond_5
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->U0(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->m0()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-lez v0, :cond_6

    .line 127
    .line 128
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->m0()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v2, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_7

    .line 154
    .line 155
    const-string v1, "tips"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const/16 v2, 0x8

    .line 168
    .line 169
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v2, "decode(...)"

    .line 174
    .line 175
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 179
    .line 180
    new-instance v3, Ljava/lang/String;

    .line 181
    .line 182
    invoke-direct {v3, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Lteam/opay/pay/kyc/base/SceneViewModel;->M0(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string v1, "KYC2"

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->Q0(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public j0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdFoundMethod()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_b

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdFoundMethod()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v2, v1

    .line 48
    :goto_1
    invoke-virtual {v0, v2}, Lteam/opay/pay/kyc/base/SceneViewModel;->D0(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;

    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdType()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move-object v2, v1

    .line 69
    :goto_2
    const-string v3, ""

    .line 70
    .line 71
    if-nez v2, :cond_4

    .line 72
    .line 73
    move-object v2, v3

    .line 74
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdNumber()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    move-object v4, v1

    .line 90
    :goto_3
    if-nez v4, :cond_6

    .line 91
    .line 92
    move-object v4, v3

    .line 93
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-eqz v5, :cond_7

    .line 102
    .line 103
    invoke-virtual {v5}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdFirstName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    goto :goto_4

    .line 108
    :cond_7
    move-object v5, v1

    .line 109
    :goto_4
    if-nez v5, :cond_8

    .line 110
    .line 111
    move-object v5, v3

    .line 112
    :cond_8
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v6}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    if-eqz v6, :cond_9

    .line 121
    .line 122
    invoke-virtual {v6}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdLastName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :cond_9
    if-nez v1, :cond_a

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_a
    move-object v3, v1

    .line 130
    :goto_5
    invoke-direct {v0, v2, v4, v5, v3}, Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sget-object v1, Lteam/opay/pay/kyc/upgrade2/task/RetrieveInfomationFragment;->v:Lteam/opay/pay/kyc/upgrade2/task/RetrieveInfomationFragment$Companion;

    .line 134
    .line 135
    const/4 v2, 0x1

    .line 136
    invoke-virtual {v1, v0, v2, v2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveInfomationFragment$Companion;->a(Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;ZZ)Lteam/opay/pay/kyc/upgrade2/task/RetrieveInfomationFragment;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 141
    .line 142
    invoke-static {p0, v1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 143
    .line 144
    .line 145
    goto :goto_7

    .line 146
    :cond_b
    :goto_6
    sget-object v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;->x:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment$Companion;

    .line 147
    .line 148
    invoke-virtual {v0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment$Companion;->a()Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 153
    .line 154
    invoke-static {p0, v1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 155
    .line 156
    .line 157
    :goto_7
    return-void
.end method

.method public o0(Ljava/lang/String;Z)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    new-array v3, v0, [Lkotlin/Pair;

    .line 6
    .line 7
    const/16 v6, 0xc

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const-string v2, "become_kyc2_success"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v1, p0

    .line 15
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->h0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->G()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->G()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "current_compliance_level"

    .line 44
    .line 45
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/SceneViewModel;->R()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "idType"

    .line 58
    .line 59
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lteam/opay/pay/kyc/base/SceneViewModel;->g0()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "route"

    .line 72
    .line 73
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/4 v4, 0x3

    .line 78
    new-array v7, v4, [Lkotlin/Pair;

    .line 79
    .line 80
    aput-object v1, v7, v0

    .line 81
    .line 82
    aput-object v2, v7, p1

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    aput-object v3, v7, v0

    .line 86
    .line 87
    const/16 v10, 0xc

    .line 88
    .line 89
    const/4 v11, 0x0

    .line 90
    const-string v6, "compliance_success_confirm"

    .line 91
    .line 92
    const/4 v8, 0x0

    .line 93
    const/4 v9, 0x0

    .line 94
    move-object v5, p0

    .line 95
    invoke-static/range {v5 .. v11}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->h0(Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "2"

    .line 103
    .line 104
    invoke-virtual {v0, v1, p0}, Lteam/opay/pay/kyc/base/SceneViewModel;->t0(Ljava/lang/String;Lag8;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    if-eqz p2, :cond_5

    .line 111
    .line 112
    :cond_3
    new-instance p2, Lteam/opay/core/settings/SettingsStorage;

    .line 113
    .line 114
    invoke-direct {p2, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v1}, Lteam/opay/core/settings/SettingsStorage;->r0(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->k0()Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-nez p2, :cond_4

    .line 129
    .line 130
    sget p2, Lteam/opay/pay/R$string;->auth_success:I

    .line 131
    .line 132
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    const-string v0, "getString(...)"

    .line 137
    .line 138
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p0, p2}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget-object v2, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 145
    .line 146
    new-instance v4, Lteam/opay/pay/home/event/OPayPageRefreshEvent;

    .line 147
    .line 148
    invoke-direct {v4, p1}, Lteam/opay/pay/home/event/OPayPageRefreshEvent;-><init>(Z)V

    .line 149
    .line 150
    .line 151
    const/4 v6, 0x4

    .line 152
    const/4 v7, 0x0

    .line 153
    const-string v3, "opay_page_refresh_event"

    .line 154
    .line 155
    const/4 v5, 0x0

    .line 156
    invoke-static/range {v2 .. v7}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    new-instance p1, Lorg/json/JSONObject;

    .line 160
    .line 161
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string p2, "success"

    .line 165
    .line 166
    const-string v0, "true"

    .line 167
    .line 168
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    const-string p2, "kycLevel"

    .line 172
    .line 173
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    new-instance p2, Landroid/content/Intent;

    .line 177
    .line 178
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v0, "data"

    .line 182
    .line 183
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-string p2, "putExtra(...)"

    .line 192
    .line 193
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const/4 p2, -0x1

    .line 197
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance p2, Lteam/opay/pay/kyc/event/KYCUpgradeEvent;

    .line 209
    .line 210
    invoke-direct {p2, v1}, Lteam/opay/pay/kyc/event/KYCUpgradeEvent;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    sget-object v2, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 217
    .line 218
    new-instance v4, Lteam/opay/pay/kyc/event/KYCUpgradeEvent;

    .line 219
    .line 220
    invoke-direct {v4, v1}, Lteam/opay/pay/kyc/event/KYCUpgradeEvent;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/4 v6, 0x4

    .line 224
    const/4 v7, 0x0

    .line 225
    const-string v3, "kyc_upgrade_event"

    .line 226
    .line 227
    const/4 v5, 0x0

    .line 228
    invoke-static/range {v2 .. v7}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    sget-object p1, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessFragment;->u:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessFragment$Companion;

    .line 232
    .line 233
    invoke-virtual {p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessFragment$Companion;->a()Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessFragment;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    sget p2, Lteam/opay/pay/R$id;->fragment_container:I

    .line 238
    .line 239
    invoke-static {p0, p2, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 240
    .line 241
    .line 242
    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/kyc/upgrade2/Hilt_KycUpgrade2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->d0()Lte;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lte;->b:Landroidx/fragment/app/FragmentContainerView;

    .line 11
    .line 12
    sget v0, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 13
    .line 14
    invoke-static {p0, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;->t0()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/pay/kyc/upgrade2/Hilt_KycUpgrade2Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->s(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onEvent(Lteam/opay/pay/kyc/base/ResultEvent;)V
    .locals 3
    .param p1    # Lteam/opay/pay/kyc/base/ResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ResultEvent;->a()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;->v0(Lteam/opay/pay/kyc/base/KycNodeData;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_7

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ResultEvent;->c()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->n0()Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x0

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object p1, v0

    .line 43
    :goto_0
    const-string v1, "ID_INFO_VERIFY"

    .line 44
    .line 45
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_6

    .line 50
    .line 51
    const-string v2, "FILL_ADDRESS_INFO"

    .line 52
    .line 53
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->l()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-object p1, v0

    .line 84
    :goto_1
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycUpgradeActivity;->c0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->c0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 113
    .line 114
    .line 115
    :cond_7
    :goto_3
    return-void
.end method

.method public final v0(Lteam/opay/pay/kyc/base/KycNodeData;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "KYC2"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method
