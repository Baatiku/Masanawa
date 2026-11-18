.class public final Lteam/opay/core/common/android/DatePickerFragment;
.super Lteam/opay/core/common/base/BaseDialogFragment;
.source "DatePickerFragment.kt"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/android/DatePickerFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 ?2\u00020\u00012\u00020\u0002:\u0001@B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\'\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J/\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0013\u0010\u001f\u001a\u00020\t*\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u001f\u0010&\u001a\u00020!2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008&\u0010\'R0\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\t\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u001c\u00107\u001a\n 4*\u0004\u0018\u00010\u001e0\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u001c\u00109\u001a\n 4*\u0004\u0018\u00010\u001e0\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00106R\u001c\u0010;\u001a\n 4*\u0004\u0018\u00010\u001e0\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u00106R\u0016\u0010>\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=\u00a8\u0006A"
    }
    d2 = {
        "Lteam/opay/core/common/android/DatePickerFragment;",
        "Lteam/opay/core/common/base/BaseDialogFragment;",
        "Landroid/app/DatePickerDialog$OnDateSetListener;",
        "<init>",
        "()V",
        "",
        "year",
        "month",
        "day",
        "",
        "X",
        "(III)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "Landroidx/fragment/app/FragmentManager;",
        "fm",
        "",
        "tag",
        "show",
        "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V",
        "dismiss",
        "L",
        "()I",
        "Landroid/widget/DatePicker;",
        "view",
        "onDateSet",
        "(Landroid/widget/DatePicker;III)V",
        "Ljava/util/Calendar;",
        "Y",
        "(Ljava/util/Calendar;)V",
        "",
        "W",
        "()Z",
        "min",
        "max",
        "V",
        "(II)Z",
        "Lkotlin/Function1;",
        "n",
        "Lkotlin/jvm/functions/Function1;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "callback",
        "Ljava/util/Date;",
        "o",
        "Ljava/util/Date;",
        "minDate",
        "kotlin.jvm.PlatformType",
        "p",
        "Ljava/util/Calendar;",
        "calendar",
        "q",
        "maxCalendar",
        "r",
        "minCalendar",
        "s",
        "I",
        "datePickerView",
        "t",
        "Companion",
        "common-base_release"
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
.field public static final t:Lteam/opay/core/common/android/DatePickerFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public n:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Calendar;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final p:Ljava/util/Calendar;

.field public final q:Ljava/util/Calendar;

.field public final r:Ljava/util/Calendar;

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/common/android/DatePickerFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/common/android/DatePickerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/common/android/DatePickerFragment;->t:Lteam/opay/core/common/android/DatePickerFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/base/BaseDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->p:Ljava/util/Calendar;

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->q:Ljava/util/Calendar;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lteam/opay/core/common/android/DatePickerFragment;->Y(Ljava/util/Calendar;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->r:Ljava/util/Calendar;

    .line 27
    .line 28
    return-void
.end method

.method private final X(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->p:Ljava/util/Calendar;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lteam/opay/core/common/android/DatePickerFragment;->p:Ljava/util/Calendar;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lteam/opay/core/common/android/DatePickerFragment;->p:Ljava/util/Calendar;

    .line 14
    .line 15
    const/4 p2, 0x5

    .line 16
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public L()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public final V(II)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    if-gt v0, p2, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :cond_0
    return v1
.end method

.method public final W()Z
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "samsung"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x15

    .line 13
    .line 14
    const/16 v1, 0x16

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lteam/opay/core/common/android/DatePickerFragment;->V(II)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    return v2
.end method

.method public final Y(Ljava/util/Calendar;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sub-int/2addr v0, v1

    .line 23
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x5

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lnk8;->c:Lnk8;

    .line 7
    .line 8
    const-string v2, "dismiss"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, Lteam/opay/core/common/GenericLogger;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/android/DatePickerFragment;->W()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v7, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v8, Landroid/app/DatePickerDialog;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeDialogFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->p:Ljava/util/Calendar;

    .line 17
    .line 18
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    iget-object v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->p:Ljava/util/Calendar;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    iget-object v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->p:Ljava/util/Calendar;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const v2, 0x1030073

    .line 35
    .line 36
    .line 37
    move-object v0, v8

    .line 38
    move-object v1, v3

    .line 39
    move-object v3, p0

    .line 40
    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v8, Landroid/app/DatePickerDialog;

    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeDialogFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->p:Ljava/util/Calendar;

    .line 51
    .line 52
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    iget-object v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->p:Ljava/util/Calendar;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    iget-object v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->p:Ljava/util/Calendar;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    move-object v0, v8

    .line 69
    move-object v1, v3

    .line 70
    move-object v2, p0

    .line 71
    move v3, v4

    .line 72
    move v4, v5

    .line 73
    move v5, v6

    .line 74
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {v8}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lteam/opay/core/common/android/DatePickerFragment;->q:Ljava/util/Calendar;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->o:Ljava/util/Date;

    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 95
    .line 96
    .line 97
    move-result-wide v1

    .line 98
    iget-object v3, p0, Lteam/opay/core/common/android/DatePickerFragment;->q:Ljava/util/Calendar;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    cmp-long v5, v1, v3

    .line 105
    .line 106
    if-gtz v5, :cond_1

    .line 107
    .line 108
    invoke-virtual {v8}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 117
    .line 118
    .line 119
    :cond_1
    const-string v0, ""

    .line 120
    .line 121
    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    iget v0, p0, Lteam/opay/core/common/android/DatePickerFragment;->s:I

    .line 125
    .line 126
    if-ne v0, v7, :cond_3

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v1, "date_picker_header_year"

    .line 133
    .line 134
    const-string v2, "id"

    .line 135
    .line 136
    const-string v3, "android"

    .line 137
    .line 138
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {v8}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v4, "date_picker_year"

    .line 155
    .line 156
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v8}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    if-nez v0, :cond_2

    .line 169
    .line 170
    move-object v0, v1

    .line 171
    :cond_2
    if-eqz v0, :cond_3

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 174
    .line 175
    .line 176
    :cond_3
    return-object v8
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1    # Landroid/widget/DatePicker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-direct {p0, p2, p3, p4}, Lteam/opay/core/common/android/DatePickerFragment;->X(III)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/core/common/android/DatePickerFragment;->n:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lteam/opay/core/common/android/DatePickerFragment;->p:Ljava/util/Calendar;

    .line 14
    .line 15
    const-string p3, "calendar"

    .line 16
    .line 17
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "fm"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2, p0}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->i()I

    .line 15
    .line 16
    .line 17
    const-class p2, Lteam/opay/core/common/android/DatePickerFragment;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->g0()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    sget-object p2, Lnk8;->c:Lnk8;

    .line 32
    .line 33
    const-string v0, "show"

    .line 34
    .line 35
    invoke-virtual {p2, v0, p1}, Lteam/opay/core/common/GenericLogger;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
