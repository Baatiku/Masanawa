.class public final Lteam/opay/pay/pin/AppLockPatternFragment$b;
.super Ljava/lang/Object;
.source "AppLockPatternFragment.kt"

# interfaces
.implements Lteam/opay/pay/lockpattern/widget/LockPatternView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/pin/AppLockPatternFragment;-><init>()V
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
        "team/opay/pay/pin/AppLockPatternFragment$b",
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
.field public final synthetic a:Lteam/opay/pay/pin/AppLockPatternFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/pin/AppLockPatternFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$b;->a:Lteam/opay/pay/pin/AppLockPatternFragment;

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
    iget-object v0, p0, Lteam/opay/pay/pin/AppLockPatternFragment$b;->a:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnf6;

    .line 8
    .line 9
    iget-object v0, v0, Lnf6;->b:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->w()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 5
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
    iget-object v1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$b;->a:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 9
    .line 10
    invoke-static {v1}, Lteam/opay/pay/pin/AppLockPatternFragment;->R(Lteam/opay/pay/pin/AppLockPatternFragment;)[B

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
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$b;->a:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$b;->a:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/pay/pin/AppLockPatternFragment;->T(Lteam/opay/pay/pin/AppLockPatternFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->p()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lt v2, v1, :cond_0

    .line 41
    .line 42
    invoke-static {p1}, Lteam/opay/pay/pin/AppLockPatternFragment;->W(Lteam/opay/pay/pin/AppLockPatternFragment;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lteam/opay/pay/pin/AppLockPatternFragment$PatternStatus;->ERROR:Lteam/opay/pay/pin/AppLockPatternFragment$PatternStatus;

    .line 46
    .line 47
    invoke-static {p1, v0}, Lteam/opay/pay/pin/AppLockPatternFragment;->X(Lteam/opay/pay/pin/AppLockPatternFragment;Lteam/opay/pay/pin/AppLockPatternFragment$PatternStatus;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Lteam/opay/pay/pin/AppLockPatternFragment;->T(Lteam/opay/pay/pin/AppLockPatternFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Lteam/opay/core/settings/SettingsStorage;->b0(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$b;->a:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 59
    .line 60
    sget-object v0, Lteam/opay/pay/pin/AppLockPatternFragment$PatternStatus;->CORRECT:Lteam/opay/pay/pin/AppLockPatternFragment$PatternStatus;

    .line 61
    .line 62
    invoke-static {p1, v0}, Lteam/opay/pay/pin/AppLockPatternFragment;->X(Lteam/opay/pay/pin/AppLockPatternFragment;Lteam/opay/pay/pin/AppLockPatternFragment$PatternStatus;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$b;->a:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$b;->a:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 75
    .line 76
    invoke-static {p1}, Lteam/opay/pay/pin/AppLockPatternFragment;->T(Lteam/opay/pay/pin/AppLockPatternFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->o()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    sget-object v3, Lteam/opay/pay/util/DataUtil;->a:Lteam/opay/pay/util/DataUtil$Companion;

    .line 85
    .line 86
    invoke-virtual {v3}, Lteam/opay/pay/util/DataUtil$Companion;->a()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eq v2, v4, :cond_3

    .line 91
    .line 92
    invoke-static {p1}, Lteam/opay/pay/pin/AppLockPatternFragment;->T(Lteam/opay/pay/pin/AppLockPatternFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, v0}, Lteam/opay/core/settings/SettingsStorage;->b0(I)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-static {p1}, Lteam/opay/pay/pin/AppLockPatternFragment;->T(Lteam/opay/pay/pin/AppLockPatternFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->p()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-lt v0, v1, :cond_4

    .line 108
    .line 109
    invoke-static {p1}, Lteam/opay/pay/pin/AppLockPatternFragment;->W(Lteam/opay/pay/pin/AppLockPatternFragment;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    invoke-static {p1}, Lteam/opay/pay/pin/AppLockPatternFragment;->T(Lteam/opay/pay/pin/AppLockPatternFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->p()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lteam/opay/core/settings/SettingsStorage;->b0(I)V

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lteam/opay/pay/pin/AppLockPatternFragment;->T(Lteam/opay/pay/pin/AppLockPatternFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v3}, Lteam/opay/pay/util/DataUtil$Companion;->a()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {p1, v0}, Lteam/opay/core/settings/SettingsStorage;->a0(I)V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$b;->a:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 138
    .line 139
    sget-object v0, Lteam/opay/pay/pin/AppLockPatternFragment$PatternStatus;->ERROR:Lteam/opay/pay/pin/AppLockPatternFragment$PatternStatus;

    .line 140
    .line 141
    invoke-static {p1, v0}, Lteam/opay/pay/pin/AppLockPatternFragment;->X(Lteam/opay/pay/pin/AppLockPatternFragment;Lteam/opay/pay/pin/AppLockPatternFragment$PatternStatus;)V

    .line 142
    .line 143
    .line 144
    :goto_1
    return-void
.end method
