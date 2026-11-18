.class public final Lteam/opay/pay/android/validation/CalendarFieldValidation;
.super Ljava/lang/Object;
.source "CalendarFieldValidation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR*\u0010\"\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u00028\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\u0005R.\u0010\'\u001a\u0004\u0018\u00010\r2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\r8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010#\u001a\u0004\u0008\u001d\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/android/validation/CalendarFieldValidation;",
        "",
        "",
        "isRequired",
        "<init>",
        "(Z)V",
        "Lag8;",
        "owner",
        "Lteam/opay/pay/android/validation/CalendarValidationDecorator;",
        "decorator",
        "",
        "f",
        "(Lag8;Lteam/opay/pay/android/validation/CalendarValidationDecorator;)V",
        "Ljava/util/Calendar;",
        "calendar",
        "b",
        "(Ljava/util/Calendar;)Z",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/pay/android/validation/ValidationInfo;",
        "a",
        "Landroidx/lifecycle/MutableLiveData;",
        "_validation",
        "Landroidx/lifecycle/LiveData;",
        "Landroidx/lifecycle/LiveData;",
        "d",
        "()Landroidx/lifecycle/LiveData;",
        "validation",
        "value",
        "c",
        "Z",
        "getRequired",
        "()Z",
        "setRequired",
        "required",
        "Ljava/util/Calendar;",
        "()Ljava/util/Calendar;",
        "h",
        "(Ljava/util/Calendar;)V",
        "input",
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
.field public final a:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/android/validation/ValidationInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/android/validation/ValidationInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z

.field public d:Ljava/util/Calendar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lteam/opay/pay/android/validation/CalendarFieldValidation;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->a:Landroidx/lifecycle/MutableLiveData;

    .line 4
    iput-object v0, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->b:Landroidx/lifecycle/LiveData;

    .line 5
    iput-boolean p1, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->c:Z

    .line 6
    new-instance p1, Lteam/opay/pay/android/validation/ValidationInfo;

    iget-object v1, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->d:Ljava/util/Calendar;

    invoke-virtual {p0, v1}, Lteam/opay/pay/android/validation/CalendarFieldValidation;->e(Ljava/util/Calendar;)Z

    move-result v2

    iget-boolean v3, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->c:Z

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/android/validation/ValidationInfo;-><init>(ZZLjava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lteam/opay/pay/android/validation/CalendarFieldValidation;-><init>(Z)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/android/validation/CalendarFieldValidation;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/validation/CalendarFieldValidation;->g(Lteam/opay/pay/android/validation/CalendarFieldValidation;Ljava/util/Calendar;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Lteam/opay/pay/android/validation/CalendarFieldValidation;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/validation/CalendarFieldValidation;->h(Ljava/util/Calendar;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/util/Calendar;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 11
    :goto_1
    return p1
.end method

.method public final c()Ljava/util/Calendar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->d:Ljava/util/Calendar;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/android/validation/ValidationInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->b:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Ljava/util/Calendar;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/validation/CalendarFieldValidation;->b(Ljava/util/Calendar;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final f(Lag8;Lteam/opay/pay/android/validation/CalendarValidationDecorator;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/android/validation/CalendarValidationDecorator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "decorator"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ltm1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ltm1;-><init>(Lteam/opay/pay/android/validation/CalendarFieldValidation;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Lteam/opay/pay/android/validation/CalendarValidationDecorator;->l(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->b:Landroidx/lifecycle/LiveData;

    .line 20
    .line 21
    invoke-virtual {p2}, Lteam/opay/pay/android/validation/CalendarValidationDecorator;->d()Lvfa;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final h(Ljava/util/Calendar;)V
    .locals 9
    .param p1    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->d:Ljava/util/Calendar;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->a:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    new-instance v8, Lteam/opay/pay/android/validation/ValidationInfo;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/validation/CalendarFieldValidation;->e(Ljava/util/Calendar;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-boolean v3, p0, Lteam/opay/pay/android/validation/CalendarFieldValidation;->c:Z

    .line 12
    .line 13
    const/16 v6, 0xc

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v1, v8

    .line 19
    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/android/validation/ValidationInfo;-><init>(ZZLjava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
