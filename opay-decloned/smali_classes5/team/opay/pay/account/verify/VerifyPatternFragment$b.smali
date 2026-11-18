.class public final Lteam/opay/pay/account/verify/VerifyPatternFragment$b;
.super Ljava/lang/Object;
.source "VerifyPatternFragment.kt"

# interfaces
.implements Lteam/opay/pay/lockpattern/widget/LockPatternView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/verify/VerifyPatternFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\t\u001a\u00020\u00022\u0010\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u00060\u0006R\u00020\u00070\u0005H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "team/opay/pay/account/verify/VerifyPatternFragment$b",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView$a;",
        "",
        "a",
        "()V",
        "",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView;",
        "cells",
        "b",
        "(Ljava/util/List;)V",
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
.field public final synthetic a:Lteam/opay/pay/account/verify/VerifyPatternFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/account/verify/VerifyPatternFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Loj6;

    .line 8
    .line 9
    iget-object v0, v0, Loj6;->f:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->w()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "cells"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lrj8;->a:Lrj8;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 9
    .line 10
    invoke-static {v1}, Lteam/opay/pay/account/verify/VerifyPatternFragment;->x0(Lteam/opay/pay/account/verify/VerifyPatternFragment;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, p1, v1}, Lrj8;->b(Ljava/util/List;[B)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x6

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->V()Lteam/opay/core/settings/SettingsStorage;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->p()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-lt p1, v1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 39
    .line 40
    sget-object v0, Lteam/opay/pay/account/verify/PatternStatus;->ERROR:Lteam/opay/pay/account/verify/PatternStatus;

    .line 41
    .line 42
    invoke-static {p1, v0}, Lteam/opay/pay/account/verify/VerifyPatternFragment;->y0(Lteam/opay/pay/account/verify/VerifyPatternFragment;Lteam/opay/pay/account/verify/PatternStatus;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->V()Lteam/opay/core/settings/SettingsStorage;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v0}, Lteam/opay/core/settings/SettingsStorage;->b0(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 60
    .line 61
    sget-object v0, Lteam/opay/pay/account/verify/PatternStatus;->CORRECT:Lteam/opay/pay/account/verify/PatternStatus;

    .line 62
    .line 63
    invoke-static {p1, v0}, Lteam/opay/pay/account/verify/VerifyPatternFragment;->y0(Lteam/opay/pay/account/verify/VerifyPatternFragment;Lteam/opay/pay/account/verify/PatternStatus;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 68
    .line 69
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->V()Lteam/opay/core/settings/SettingsStorage;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->o()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    sget-object v2, Lteam/opay/pay/util/DataUtil;->a:Lteam/opay/pay/util/DataUtil$Companion;

    .line 82
    .line 83
    invoke-virtual {v2}, Lteam/opay/pay/util/DataUtil$Companion;->a()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eq p1, v3, :cond_2

    .line 88
    .line 89
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 90
    .line 91
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->V()Lteam/opay/core/settings/SettingsStorage;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Lteam/opay/core/settings/SettingsStorage;->b0(I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 103
    .line 104
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->V()Lteam/opay/core/settings/SettingsStorage;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->p()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-ge p1, v1, :cond_3

    .line 117
    .line 118
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 119
    .line 120
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->V()Lteam/opay/core/settings/SettingsStorage;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->p()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lteam/opay/core/settings/SettingsStorage;->b0(I)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 138
    .line 139
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->V()Lteam/opay/core/settings/SettingsStorage;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v2}, Lteam/opay/pay/util/DataUtil$Companion;->a()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {p1, v0}, Lteam/opay/core/settings/SettingsStorage;->a0(I)V

    .line 152
    .line 153
    .line 154
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;->a:Lteam/opay/pay/account/verify/VerifyPatternFragment;

    .line 155
    .line 156
    sget-object v0, Lteam/opay/pay/account/verify/PatternStatus;->ERROR:Lteam/opay/pay/account/verify/PatternStatus;

    .line 157
    .line 158
    invoke-static {p1, v0}, Lteam/opay/pay/account/verify/VerifyPatternFragment;->y0(Lteam/opay/pay/account/verify/VerifyPatternFragment;Lteam/opay/pay/account/verify/PatternStatus;)V

    .line 159
    .line 160
    .line 161
    :goto_0
    return-void
.end method
